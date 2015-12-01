namespace :run do
	task :func do
		sh  "node server.js"
	end
end

namespace :test do

	task :func do
		Thread.start() do
			sh "pkill -f node; node server.js"
		end

		begin
			sleep(2)
			puts "IM STARTING CUCUMBER NOW"
			ENV['SERVER_PATH']="http://127.0.0.1:3000"
			sh "cucumber"
		end
	end
end