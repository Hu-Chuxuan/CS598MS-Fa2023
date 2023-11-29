SELECT t.* FROM title_basic AS t WHERE t.startyear > 1980 AND t.endyear < 2000 AND t.isadult = 1 AND t.runtime < 100 ORDER BY avgrat DESC LIMIT 5 OFFSET?
*/

export default class MovieRecommender {
    static getInput() {
        return new Promise((resolve) => {
            const data = require('../input')