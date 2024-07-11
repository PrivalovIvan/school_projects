select address,
round((((max(age)-(min(age) / max(age::numeric))))),2)::real as formula,
round(avg(age),2)::real as average,
	(
		case when max(age)-(min(age) / max(age))> avg(age) then true else false end
	) as comparison
from person
group by (address)
order by address;
