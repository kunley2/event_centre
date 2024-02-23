from flask import Blueprint,render_template,request,redirect
from .openai import get_recommendation,recommend_places

views = Blueprint('views',__name__)


@views.route('/',methods=['GET','POST'])
def index():

    return render_template('index.html')


@views.route('products/',methods=['GET','POST'])
def output():
    """ this function is used to render a webpage for the output in the form from the index page
            Parameters:
                    user_id (str): the user id of the user to get recommendation
    """
    if request.method == "POST":
        event_type = request.form.get('event_type')
        Location = request.form.get('Location')
        capacity = request.form.get('capacity')
        response = recommend_places(Location,event_type,capacity)
        print(response)
        
    return render_template('output.html', event_type=event_type, response=response)