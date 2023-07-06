// ToDo: conect mySql.
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
   host: '127.0.0.1',
   user: 'root',
   password: '',
   database: 'Aviv_Project'
});

async function endPool() {
    pool.end();
 }
 
 async function getAllNotes() {
    const sqlQuery = 'SELECT * FROM customers';
    const [allCustomers] = await pool.query(sqlQuery);
    return allCustomers;
 }
 

/* -------------------------------------------- */
async function getAllCustomers(){
    const sqlQuery = 'SELECT * FROM customers';
    const [allCustomers] = await pool.query(sqlQuery);
    console.log( allCustomers);
    
    return {"res":"DONE", "customers":allCustomers};
}
   async function getCustomerByID(customerId){
        console.log( customerId );
       const sqlQuery = `SELECT * FROM customers WHERE ID = ${customerId}`;
    const [customerById] = await pool.query(sqlQuery);
    console.log( customerById);
       return {"res":"DONE", "id": customerId};
   }
   async function insertNewCustomer(){
    const sqlQuery = 'SELECT * FROM contact_list';
    const [allCustomers] = await pool.query(sqlQuery);
    console.log( allCustomers);
       return {"res":"DONE"};
   }
   async function deleteCustomerByID(customerId){
    const sqlQuery = 'SELECT * FROM phones';
    const [allCustomers] = await pool.query(sqlQuery);
    console.log( allCustomers);
       return {"res":"DONE", "id": customerId };
   }
   async function updateCustomerByID(customerId){
    const sqlQuery = 'SELECT * FROM address';
    const [allCustomers] = await pool.query(sqlQuery);
    console.log( allCustomers);
      return {"res":"DONE", "id": customerId };
   }


module.exports = {
   getAllCustomers,
   getCustomerByID,
   insertNewCustomer,
   deleteCustomerByID,
   updateCustomerByID,
};