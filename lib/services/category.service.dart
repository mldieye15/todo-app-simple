import 'package:todoapp_sqf/helpers/repository.dart';

import '../models/category.model.dart';

class CategoryService{

  late Repository repository;

  CategoryService(){
    repository = Repository();
  }

  save(Category category) async {
    return await repository.insert('categories', category);
  }
}