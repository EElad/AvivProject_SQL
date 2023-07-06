const db = require('../db.js');

async function getAllCustomers(req, res) {
    res.json(await db.getAllCustomers());
}

async function getCustomerByID(req, res) {
    res.json(await db.getCustomerByID(req.params.id));
    res.send(`Customer with id ${req.params.id} was show`);
}
async function insertNewCustomer(req, res) {
    const ins = await db.insertNewCustomer(req.body.fname, req.body.lname);
    console.log(ins);
    res.status(201).send(`Customer ${req.body.name} was insert`);
}

async function deleteCustomerByID(req, res) {
    const del = await db.deleteCustomerBy(req.params.id);
    console.log(del);
    res.send(`Customer with id ${req.params.id} was deleted`);
}

async function updateCustomerByID(req, res) {
    const update = await db.updateCustomerByID(req.params.id, req.body);
    console.log(update);
    res.send(`Customer with id ${req.params.id} was updated`);

}

module.exports = {
    getAllCustomers,
    getCustomerByID,
    insertNewCustomer,
    deleteCustomerByID,
    updateCustomerByID,
};

console.clear()