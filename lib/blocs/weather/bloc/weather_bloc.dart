import 'package:bloc/bloc.dart';
import 'package:bloc_weather_app/models/weather.dart';
import 'package:equatable/equatable.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(InitialWeatherState()) {
    on<FetchWeatherEvent>((event, emit) {
      emit(WeatherLoadingState());
      try {
        final weather = Weather();
        emit(WeatherLoadedState(weather: weather));
      } catch (_) {
        emit(const WeatherErrorState(message: 'Something went wrong!'));
      }
    });
  }
}
