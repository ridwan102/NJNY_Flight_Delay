import flask 
import pickle
from flask import request
import numpy as np

# initialize the app
app = flask.Flask(__name__)

# load in Day of Week, Carrier, Origin, and Destination 
f = open("./pickle/list_day", "rb")
list_day = pickle.load(f)
f.close()

f = open("./pickle/list_carrier", "rb")
list_carrier = pickle.load(f)
f.close()

f = open("./pickle/list_origin", "rb")
list_origin = pickle.load(f)
f.close()

f = open("./pickle/list_destination", "rb")
list_destination = pickle.load(f)
f.close()

with open("pickle/rfc.pkl", "rb") as f:
    rfc_model = pickle.load(f)

feature_names = rfc_model.feature_names

@app.route ('/')
def welcome():
    return flask.render_template('predictor.html',
                                 list_day=list_day,
                                 list_carrier=list_carrier,
                                 list_origin=list_origin,
                                 list_destination=list_destination)

@app.route("/predict", methods=["POST", "GET"])
def predict():

    x_input = []
    for i in range(len(rfc_model.feature_names)):
        f_value = float(
            request.args.get(rfc_model.feature_names[i])
            )
        x_input.append(f_value)

    pred_probs = rfc_model.predict_proba([x_input]).flat

    pred_str = ""
    for class_i in np.argsort(pred_probs)[::-1]:
        pred_str += f"""
        {rfc_model.target_names[class_i]}: {pred_probs[class_i]:g}
        """

    return flask.render_template('predictor.html', 
                                feature_names=feature_names,
                                x_input=x_input,
                                prediction=np.argsort(pred_probs)[:-1],
                                pred_str=pred_str)


# for local development:
if __name__ == "__main__":
    app.run(debug=True)

# for public web serving:
app.run(host="0.0.0.0")