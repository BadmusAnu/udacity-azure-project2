from locust import HttpUser, task, between

class WebsiteTestUser(HttpUser):
    wait_time = between(0.5, 3.0)

    @task(1)
    def test_root(self):
        self.client.get("")

    @task(2)
    def test_predict(self):
        self.client.post("predict")