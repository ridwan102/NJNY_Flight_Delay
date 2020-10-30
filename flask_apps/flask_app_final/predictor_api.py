def convert_to_numeric(value):
    # Converts string into cleaned text, converts it to model input
    return word_vectorizer.transform(cleaned_text)

def predict_delay(value):
    # Takes in a user input string, predict the toxicity levels
    model_input = convert_to_numeric(value)
    results = []
    # I use a dictionary of multiple models in this project
    for key,model in model_dict.items():
        results.append(round(model.predict_proba(model_input)))
    return results

def make_prediction(input_value):

    # Calls on previous functions to get probabilities of toxicity
    pred_probs = predict_toxicity(input_value)
    probs = [{'name': list(model_dict.keys())[index], 'prob': pred_probs[index]} for index in np.argsort(pred_probs)[::-1]]    
    return (input_value, probs)