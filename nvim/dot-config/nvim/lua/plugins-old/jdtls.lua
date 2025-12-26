return {
	'mfussenegger/nvim-jdtls',
	-- only load on java files
	enabled = true,
	ft = "java",

	config = function()
		local config = {
			signatureHelp = { enabled = true },
			contentProvider = { preferred = 'fernflower' },  -- Use fernflower to decompile library code
			-- If you are developing in projects with different Java versions, you need
			-- to tell eclipse.jdt.ls to use the location of the JDK for your Java version
			-- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
			-- And search for `interface RuntimeOption`
			-- The `name` is NOT arbitrary, but must match one of the elements from `enum ExecutionEnvironment` in the link above
			configuration = {
				runtimes = {
					{
						name = 'Java-1.8',
						path = '/home/otavio/.asdf/installs/java/adoptopenjdk-8.0.392+8'
					},
					{
						name = 'Java-21',
						path = '/usr/lib/jvm/java-21-openjdk'
					},
					{
						name = 'Java-24',
						path = '/usr/lib/jvm/java-24-openjdk'
					},
				},
			},
			cmd = {'/home/otavio/.local/share/nvim/mason/packages/jdtls/bin/jdtls'},
			root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
		}

		require('jdtls').start_or_attach(config)
	end
}
