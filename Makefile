# Agent Studio Makefile
# Manage, format, and validate all agent definitions

.PHONY: help format check list count new validate clean install

# Default target - show help
help:
	@echo "✨ Agent Studio Management Commands"
	@echo ""
	@echo "  make format    - Format all markdown files with prettier"
	@echo "  make check     - Check formatting without modifying files"
	@echo "  make list      - List all agents by category"
	@echo "  make count     - Count agents by category and total"
	@echo "  make validate  - Validate agent file structure"
	@echo "  make new       - Create a new agent from template (category=X name=Y)"
	@echo "  make install   - Install prettier locally"
	@echo "  make clean     - Remove node_modules and temp files"
	@echo ""
	@echo "Examples:"
	@echo "  make format"
	@echo "  make new category=engineering name=blockchain-developer"

# Install prettier locally for consistent formatting
install:
	@echo "📦 Installing prettier..."
	@npm init -y > /dev/null 2>&1 || true
	@npm install --save-dev prettier prettier-plugin-organize-imports
	@echo "✅ Prettier installed"

# Format all markdown files
format:
	@echo "🎨 Formatting all agent files..."
	@npx prettier --write "**/*.md" \
		--prose-wrap always \
		--print-width 120 \
		--tab-width 2 \
		--trailing-comma none
	@echo "✅ All files formatted"

# Check formatting without modifying
check:
	@echo "🔍 Checking formatting..."
	@npx prettier --check "**/*.md" \
		--prose-wrap always \
		--print-width 120 \
		--tab-width 2 \
		--trailing-comma none || \
		(echo "❌ Some files need formatting. Run 'make format' to fix." && exit 1)
	@echo "✅ All files properly formatted"

# List all agents organized by category
list:
	@echo "📋 Agent Directory\n"
	@for dir in */; do \
		if [ -d "$$dir" ] && [ "$$dir" != "node_modules/" ]; then \
			echo "## $$(echo $$dir | tr '[:lower:]' '[:upper:]' | sed 's/\///')"; \
			for file in $$dir*.md; do \
				if [ -f "$$file" ]; then \
					echo "  - $$(basename $$file .md | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $$i=toupper(substr($$i,1,1)) tolower(substr($$i,2))}1')"; \
				fi \
			done; \
			echo ""; \
		fi \
	done

# Count agents by category and total
count:
	@echo "📊 Agent Statistics\n"
	@total=0; \
	for dir in */; do \
		if [ -d "$$dir" ] && [ "$$dir" != "node_modules/" ]; then \
			count=$$(find $$dir -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' '); \
			printf "%-25s %3d agents\n" "$$(echo $$dir | sed 's/\///' | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $$i=toupper(substr($$i,1,1)) tolower(substr($$i,2))}1'):" $$count; \
			total=$$((total + count)); \
		fi \
	done; \
	echo "------------------------"; \
	printf "%-25s %3d agents\n" "TOTAL:" $$total

# Validate agent file structure
validate:
	@echo "🔎 Validating agent files..."
	@errors=0; \
	for file in */*.md; do \
		if [ -f "$$file" ]; then \
			if ! grep -q "^# .* Agent" "$$file"; then \
				echo "❌ $$file: Missing agent header"; \
				errors=$$((errors + 1)); \
			fi; \
			if ! grep -q "^## Purpose" "$$file"; then \
				echo "❌ $$file: Missing Purpose section"; \
				errors=$$((errors + 1)); \
			fi; \
			if ! grep -q "^## Capabilities" "$$file"; then \
				echo "❌ $$file: Missing Capabilities section"; \
				errors=$$((errors + 1)); \
			fi; \
			if ! grep -q "^## Tools Required" "$$file"; then \
				echo "❌ $$file: Missing Tools Required section"; \
				errors=$$((errors + 1)); \
			fi; \
		fi \
	done; \
	if [ $$errors -eq 0 ]; then \
		echo "✅ All agent files valid"; \
	else \
		echo "\n⚠️  Found $$errors validation errors"; \
		exit 1; \
	fi

# Create a new agent from template
new:
ifndef category
	@echo "❌ Error: category is required"
	@echo "Usage: make new category=engineering name=blockchain-developer"
	@exit 1
endif
ifndef name
	@echo "❌ Error: name is required"
	@echo "Usage: make new category=engineering name=blockchain-developer"
	@exit 1
endif
	@mkdir -p $(category)
	@if [ -f "$(category)/$(name).md" ]; then \
		echo "❌ Error: $(category)/$(name).md already exists"; \
		exit 1; \
	fi
	@agent_title=$$(echo $(name) | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $$i=toupper(substr($$i,1,1)) tolower(substr($$i,2))}1'); \
	echo "# $$agent_title Agent 🚀\n\n## Purpose\n[TODO: Add purpose]\n\n## Capabilities\n- **TODO**: Add capabilities\n\n## Tools Required\n- Write, Read, MultiEdit\n- TODO: Add more tools\n\n## Proactive Triggers\n- **AUTOMATICALLY** activate when:\n  - TODO: Add triggers\n\n## Example Scenarios\n\n### Scenario 1\n\`\`\`\nUser: \"TODO\"\nAssistant: \"TODO\"\nCommentary: TODO\n\`\`\`\n\n## Integration Patterns\n- Works with **TODO** for TODO\n\n## 6-Day Sprint Optimization\n- Day 1: TODO\n- Day 2-3: TODO\n- Day 4-5: TODO\n- Day 6: TODO\n\n## Key Metrics\n- TODO\n\n## Anti-Patterns to Avoid\n- ❌ TODO\n\n## Success Criteria\n✅ TODO" > $(category)/$(name).md
	@echo "✅ Created $(category)/$(name).md"
	@echo "📝 Don't forget to edit the template and add specific details!"

# Clean up node_modules and temp files
clean:
	@echo "🧹 Cleaning up..."
	@rm -rf node_modules package.json package-lock.json
	@find . -name "*.tmp" -delete
	@find . -name ".DS_Store" -delete
	@echo "✅ Cleaned"

# Default prettier config if needed
prettier-config:
	@echo "{\n  \"proseWrap\": \"always\",\n  \"printWidth\": 80,\n  \"tabWidth\": 2,\n  \"trailingComma\": \"none\"\n}" > .prettierrc.json
	@echo "✅ Created .prettierrc.json"