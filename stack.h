#ifndef STACK_H
#define STACK_H

#include <vector>
#include <stdexcept>

// Use inheritance from std::vector (choose public/private) as appropriate
template <typename T>
class Stack : private std::vector<T>
{
public:
    Stack();
    ~Stack();
    bool empty() const{
        return vector::empty();
    }
    size_t size() const{
        return vector::size();
    }
    void push(const T& item){
        vector::push_back(item);
    }
    void pop()  // throws std::underflow_error if empty
    {
        if(vector::empty()){
            throw std::underflow_error("stack is empty");
        }
        vectpr::pop_back();
    }
    const T& top() const; // throws std::underflow_error if empty
    {
        if(vector::empty()){
            throw std::underflow_error("stack is empty");
        }
        return vector::at(0);
    }
    // Add other members only if necessary
};


#endif
