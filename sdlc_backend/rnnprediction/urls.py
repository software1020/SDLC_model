from django.urls import path
from .views import *

urlpatterns = [
    path('predict2/', RNNPredictionView.as_view(), name='predict'),
    path('predict/', predictions, name='predict'),
    path('model/input-info/', ModelInputInfoView.as_view(), name='model-input-info'),
]
