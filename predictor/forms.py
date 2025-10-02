from django import forms

class IrisForm(forms.Form):
    sepal_length = forms.FloatField(label='Sepal Length (cm)', min_value=0)
    sepal_width = forms.FloatField(label='Sepal Width (cm)', min_value=0)
    petal_length = forms.FloatField(label='Petal Length (cm)', min_value=0)
    petal_width = forms.FloatField(label='Petal Width (cm)', min_value=0)