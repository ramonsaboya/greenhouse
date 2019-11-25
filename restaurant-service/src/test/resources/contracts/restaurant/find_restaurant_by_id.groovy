//ESCREVER
import org.springframework.cloud.contract.spec.Contract;

Contract.make{
    description "should return restaurant by id=1"

	request {
		url "/restaurant/1"
		method GET()
	}

	response {
		status OK()
		headers {
			contentType applicationJson()
		}
		body (
			id: 1,
			name: "demo restaurant"
		)
	}
}