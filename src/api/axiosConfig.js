import axios from 'axios';

export default axios.create({
    baseURL:'http://3.238.226.106:8080',
    headers: {
        'Content-Type': 'application/json',
    },
});
