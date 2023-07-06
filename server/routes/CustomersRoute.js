const express = require('express');
const router = express.Router();
const{
   getAllCustomers,
   getCustomerByID,
   insertNewCustomer,
   deleteCustomerByID,
   updateCustomerByID
}= require('../controllres/CustomerController.js');

// router.route('/')
router.get('/', async (req, res) => await getAllCustomers(req, res));
router.post('/', async (req, res) => await insertNewCustomer(req, res));

// router.route('/:id')

router.get('/:id', async (req, res) => await getCustomerByID(req, res));
router.delete('/:id', async (req, res) => await deleteCustomerByID(req, res));
router.patch('/:id', async (req, res) => await updateCustomerByID(req, res));

module.exports = router;
