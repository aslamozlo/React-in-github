import React, { Component } from 'react';
import './booking.css';

export class BookingApp extends Component {
    state = {
        input: "",
        items: []
    };

    handleChange = event => {
        this.setState({
            input: event.target.value
        });
    };
    storeItems = event => {
        event.preventDefault();
        const { input } = this.state;
        this.setState({
            items: [...this.state.items, input],
            input: ""
        });
    };
    deleteItem = key => {
        this.setState({
            items: this.state.items.filter((data, index) => index != key)

        });

    }
    render() {
        const { input, items } = this.state;
        return (
            <div className="booking-container">
                <form className="input-section" onSubmit={this.storeItems}>
                    <h1>HALL BOOKING</h1>
                    <input
                        type="text"
                        value={input}
                        onChange={this.handleChange}
                        placeholder="Enter bookings..">
                    </input>
                </form>
                <ul>
                    {items.map((data, index) => (
                        <li key={index}>{data}<i className="fas fa-trash-alt"
                            onClick={() => this.deleteItem(index)}></i></li>
                    ))}
                </ul>
            </div>
        );
    }
}

export default BookingApp;
