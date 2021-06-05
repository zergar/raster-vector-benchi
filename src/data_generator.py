import time


class TestDataGenerator:
    def __init__(self, operator) -> None:
        self.executed = False
        self.operator = operator
        self.__check_test_data_volume_existence()

    def __check_test_data_volume_existence(self):
        result = self.operator.execute("volume ls | grep 'test-data'").decode("utf-8")
        self.executed = True if "test-data" in result else False

    def create_test_data(self):
        if not self.executed:
            start = time.time()
            print(
                "Generating test data. Check the logs of tpch-generator"
                " container if you like to see the progress."
            )
            self.operator.execute(
                "run -it --rm -v test-data:/data --env-file docker_images/data_generator/data_generator.env"
                " --name data-generator tpch-generator"
            )
            end = time.time()
            print(f"Data generation is finished. It took: {str(end - start)}s")
            self.executed = True


class DataIntegrator:
    def __init__(self, operator) -> None:
        self.operator = operator

    def integrate(self, system):
        pass