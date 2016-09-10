local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_HASTE)
condition:setParameter(CONDITION_PARAM_TICKS, 4*1000)
condition:setFormula(0, 320, 0, 400)
combat:setCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end