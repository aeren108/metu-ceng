#include "nullary.h"
#include "unary.h"
#include "binary.h"
#include <math.h>

namespace sym 
{
	bool NegOp::is_neg() const { return true; }

	__expr_t* NegOp::eval(const var_map_t& vars) const { 
		if (operand->is_nullary()) {
			__nullary_op_t* n = (__nullary_op_t*) operand;
			if (n->is_con()) {
				Const* c = (Const*) n;
				return new Const(-c->get_value());
			}
		}

		return new NegOp(operand->eval(vars));
	}

	__expr_t* NegOp::diff(const std::string& v) const { 
		return new NegOp(operand->diff(v));
	}

	std::ostream& NegOp::operator<< (std::ostream &out) const {
		if (operand->is_nullary()) out << "-" << operand;
		else out << "-(" << operand << ")";

		return out;
		
	}

	bool NegOp::operator==(const __expr_t& other_) const { 
		if (!other_.is_unary()) return false;
		__unary_op_t* u = (__unary_op_t*) &other_;
		
		if (!u->is_neg()) return false;
		NegOp* n = (NegOp*) u;

		return n->operand == operand;
	}
}

namespace sym 
{
	bool ExpOp::is_exp() const { return true; }

	__expr_t* ExpOp::eval(const var_map_t& vars) const {
		if (operand->is_nullary()) {
			__nullary_op_t* n = (__nullary_op_t*) operand;
			if (n->is_con()) {
				Const* c = (Const*) n;
				return new Const(std::exp(c->get_value()));
			}
		}

		return new ExpOp(operand->eval(vars));
	}

	__expr_t* ExpOp::diff(const std::string& v) const { 
		return new MulOp(operand->diff(v), new ExpOp(operand));
	}

	std::ostream& ExpOp::operator<< (std::ostream &out) const { 
		if (operand->is_nullary()) out << "e^" << operand;
		else out << "e^(" << operand << ")";

		return out;
	}

	bool ExpOp::operator==(const __expr_t& other_) const { 
		if (!other_.is_unary()) return false;
		__unary_op_t* u = (__unary_op_t*) &other_;
		
		if (!u->is_exp()) return false;
		ExpOp* n = (ExpOp*) u;

		return n->operand == operand;
	}
}
