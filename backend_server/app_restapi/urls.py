import os
from django.conf.urls import url, include
from app_restapi import views as app_view
from rest_framework_jwt.views import obtain_jwt_token


urlpatterns = [
    url(r'^api-token-auth/', obtain_jwt_token),
    url(r'^home/$', app_view.Home.as_view()),
    url(r'^rooms/$', app_view.AllRoomsList.as_view()),
    url(r'^booking/$',app_view.RoomBooking.as_view()),
    url(r'^free-rooms/$',app_view.FreeRoomsList.as_view()),

]