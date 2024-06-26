package in.ineuron.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.ineuron.dao.ICustomerDAO;
import in.ineuron.model.Customer;

@Service
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	private ICustomerDAO repo;

	@Override
	public List<Customer> getCustomers() {

		return (List<Customer>) repo.findAll();
	}

	@Override
	public void saveCustomer(Customer customer) {
		repo.save(customer);
	}

	@Override
	public Customer fetchCustomer(Integer customerId) {
		Optional<Customer> opt = repo.findById(customerId);
		return opt.get();
	}

	@Override
	public void deleteCustomer(Integer customerId) {
		repo.deleteById(customerId);
	}

}
