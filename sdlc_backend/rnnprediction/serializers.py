from rest_framework import serializers


class RNNPredictionSerializer(serializers.Serializer):
    input_data = serializers.ListField(child=serializers.FloatField())
