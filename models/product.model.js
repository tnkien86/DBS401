import DB from '../configs/db.config.js';
class Product {
    tableName = 'product';

    findAll = async () => {
        const sql = `SELECT * FROM ${this.tableName}`;

        const result = await DB.query(sql);
        
        return result;
    }

    findById = async (id) => {
        const sql = `SELECT * FROM ${this.tableName} WHERE id = ?`;

        const result = await DB.query(sql, [id]);

        return result[0];
    }
}

export default new Product;