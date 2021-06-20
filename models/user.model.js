import DB from '../configs/db.config.js';
class User {
    tableName = 'user';

    findOne = async (username) => {
        const sql = `SELECT * FROM ${this.tableName} WHERE username = ?`;

        const result = await DB.query(sql, [username]);

        return result[0];
    }
}

export default new User;