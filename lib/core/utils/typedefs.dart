import 'package:dartz/dartz.dart';
import 'package:tech_test/core/errors/failure.dart';

typedef Result<T> = Future<Either<Failure, T>>;
