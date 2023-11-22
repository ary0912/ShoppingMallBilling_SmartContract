// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ShoppingMallBilling {
    // State variables
    address public mallOwner;
    mapping(address => uint256) public customerBalances;
    uint256 public totalPurchases;

    // Events
    // Logs customer address and purchase amount
    event PurchaseMade(address indexed customer, uint256 amount);

    // Modifier[Ensure only mall owner can perform actions]
    modifier onlyOwner() {
        require(msg.sender == mallOwner, "Only the mall owner can perform this action");
        _;
    }

    // Constructor to set mall owner
    constructor() {
        mallOwner = msg.sender;
        totalPurchases = 0;
    }

    // Function to allow customers to make purchase
    function makePurchase(uint256 _amount) public {
        require(_amount > 0, "Purchase amount must be greater than 0");
        require(customerBalances[msg.sender] >= _amount, "Insufficient funds");

        customerBalances[msg.sender] -= _amount;
        totalPurchases += 1;
        emit PurchaseMade(msg.sender, _amount);
    }

    // Function to add funds to customer's balance[ Only mall owner can do it]
    function addFunds(address _customer, uint256 _amount) public onlyOwner {
        customerBalances[_customer] += _amount;
    }

    // Function to check customer's balance
    function checkBalance(address _customer) public view returns (uint256) {
        return customerBalances[_customer];
    }

    // Function using the "payable" keyword to accept Ether and add it to the mallOwner's balance
    function receiveFunds() public payable onlyOwner {
        // Do something with the received Ether, for simplicity, just increment the balance
        customerBalances[mallOwner] += msg.value;
    }

    // Function with a loop to simulate a table of purchases for a customer
    function getCustomerPurchases(address _customer) public view returns (uint256[] memory) {
        uint256[] memory purchases = new uint256[](totalPurchases);
        
        for (uint256 i = 0; i < totalPurchases; i++) {
            purchases[i] = i + 1;
        }

        return purchases;
    }
}
