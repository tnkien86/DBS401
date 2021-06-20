import mysql from 'mysql2';

class DB {
    constructor() {
        this.conn = mysql.createConnection({
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            database: process.env.DB_NAME,
            password: process.env.DB_PASSWORD,
        })
    }

    query = async (sql, values) => {
        return new Promise((resolve, reject) => {
            this.conn.execute(sql, values, (error, result) => {
                if(error) {
                    reject(error);
                } 
                resolve(result);
            })
        })
    }
}

export default new DB();

