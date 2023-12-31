import '../../../../core/api/end_points.dart';
import '/src/core/api/api_consumer.dart';
import '/src/features/search/data/datasources/search_datasource.dart';

class SearchDatasourceImpl implements SearchDatasource {
  final ApiConsumer apiConsumer;

  const SearchDatasourceImpl({required this.apiConsumer});

  @override
  Future<List<dynamic>> searchHotels({
    required String hotelName,
  }) async {
    final response = await apiConsumer.get(
      '${EndPoints.hotelSearch}$hotelName',
      queryParameters: {'name': hotelName},
    );

    return response;
  }
}
