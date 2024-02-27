#ifndef HEAP_H
#define HEAP_H
#include <functional>
#include <stdexcept>
#include <iostream>

#include <vector>

template <typename T, typename PComparator = std::less<T> >
class Heap
{
public:
  /**
   * @brief Construct a new Heap object
   * 
   * @param m ary-ness of heap tree (default to 2)
   * @param c binary predicate function/functor that takes two items
   *          as an argument and returns a bool if the first argument has
   *          priority over the second.
   */
  Heap(int m=2, PComparator c = PComparator());

  /**
  * @brief Destroy the Heap object
  * 
  */
  ~Heap();

  /**
   * @brief Push an item to the heap
   * 
   * @param item item to heap
   */
  void push(const T& item);

  /**
   * @brief Returns the top (priority) item
   * 
   * @return T const& top priority item
   * @throw std::underflow_error if the heap is empty
   */
  T const & top() const;

  /**
   * @brief Remove the top priority item
   * 
   * @throw std::underflow_error if the heap is empty
   */
  void pop();

  /// returns true if the heap is empty

  /**
   * @brief Returns true if the heap is empty
   * 
   */
  bool empty() const;

    /**
   * @brief Returns size of the heap
   * 
   */
  size_t size() const;

private:
  /// Add whatever helper functions and data members you need below
  int m_;
  PComparator c_;
  std::vector<T> data_;
  void heapify(int idx);
  void trickleUp(int idx);
};

// Add implementation of member functions here

template <typename T, typename PComparator>
void Heap<T, PComparator>::heapify(int idx){
  //check if the first child exists
  //if it does not, then the other children do not exist because
  //a heap is a complete tree
  if(idx * m_ + 1 >= data_.size()){
    return;
  }

  int bestChild = idx * m_ + 1;

  //get the best child out of all the other children
  for(int i = 2; i <= m_; ++i){
    int nextChild = idx * m_ + i ;
    //check if ith child exists
    if(idx * m_ + i < data_.size()){
      if(c_(data_.at(nextChild), data_.at(bestChild))){
        bestChild = nextChild;
      }
    }
    //if ith child does not exist, then i+1th child does not exist
    else{
      break;
    }
  }

  //
  if(c_(data_.at(bestChild), data_.at(idx))){
    std::swap(data_.at(bestChild), data_.at(idx));
    Heap<T,PComparator>::heapify(idx);
  }
}

template <typename T, typename PComparator>
void Heap<T, PComparator>::trickleUp(int idx){
  int parent = (idx - 1) / m_;

  while(parent >= 0 && c_(data_.at(idx), data_.at(parent))){
    std::swap(data_.at(idx), data_.at(parent));
    idx = parent;
    parent = (idx - 1) / m_;
  }
}

// // We will start top() for you to handle the case of 
// // calling top on an empty heap
template <typename T, typename PComparator>
T const & Heap<T,PComparator>::top() const
{
  // Here we use exceptions to handle the case of trying
  // to access the top element of an empty heap
  if(empty()){
    // ================================
    // throw the appropriate exception
    // ================================
    throw std::underflow_error("empty heap");

  }
  // If we get here we know the heap has at least 1 item
  // Add code to return the top element
  return data_.at(0);
}


// // We will start pop() for you to handle the case of 
// // calling top on an empty heap
template <typename T, typename PComparator>
void Heap<T,PComparator>::pop()
{
  if(empty()){
    // ================================
    // throw the appropriate exception
    // ================================
    throw std::underflow_error("empty heap");
  }

  data_.at(0) = data_.at(data_.size() - 1);
  data_.pop_back();
  Heap<T, PComparator>::heapify(0);
}

template <typename T, typename PComparator>
bool Heap<T, PComparator>::empty() const{
  return data_.empty();
}

template <typename T, typename PComparator>
void Heap<T, PComparator>::push(const T& item){
  data_.push_back(item);
  Heap<T, PComparator>::trickleUp(data_.size() - 1);
}

template <typename T, typename PComparator>
Heap<T, PComparator>::Heap(int m, PComparator c):m_(m), c_(c){}

template <typename T, typename PComparator>
Heap<T, PComparator>::~Heap(){}

template <typename T, typename PComparator>
size_t Heap<T,PComparator>::size() const{
  return data_.size();
}

#endif