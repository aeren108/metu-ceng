#include "type.h"
#include "nullary.h"

namespace sym 
{
	double Const::get_value() const { 
	    return value_;
	}
	
	Const::operator double() const { 
	    return value_;
	}

	bool Const::is_con() const { 
	    return true;
	}

	__expr_t* Const::eval(const var_map_t& var_map) const { 
	    return new Const(value_);
	}

	__expr_t* Const::diff(const std::string& v) const { 
	    return new Const(0);
	}

	std::ostream& Const::operator<< (std::ostream &out) const { 
	    out << value_;
	    return out;
	}

	bool Const::operator==(const __expr_t& other) const { 
	    if (!other.is_nullary()) return false;
	    __nullary_op_t* n = (__nullary_op_t*) &other;
	    if (!n->is_con()) return false;
	    Const* c = (Const*) n;
	    
	    return c->get_value() == value_;
	}
}

namespace sym 
{
	std::string Var::get_variable() const { return var_; }
	Var::operator std::string () const { return var_; }
	
	bool Var::is_var() const { 
		return true; 
	}

	__expr_t* Var::eval(const var_map_t& vars) const { 
		if (vars.find(var_) == vars.end()) 
			return new Var(var_);
		return new Const(vars.at(var_));
	}

	__expr_t* Var::diff(const std::string& v) const {
		if (v == var_) return new Const(1);
		else return new Const(0);
	}
	
	std::ostream& Var::operator<< (std::ostream &out) const { 
		out << var_;
		return out;
	}

	bool Var::operator==(const __expr_t& other) const { 
		if (!other.is_nullary()) return false;
	    __nullary_op_t* n = (__nullary_op_t*) &other;
	    if (!n->is_var()) return false;
	    Var* v = (Var*) n;
	    
	    return v->get_variable() == var_;
	}
}
