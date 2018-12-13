require 'appium_lib'
require 'cucumber'
require 'rmagick'

Before do
  $driver = Appium::Driver.new(caps1, true)
  Appium.promote_appium_methods Object
  $driver.start_driver
  $driver.set_implicit_wait(3)
end

After do |scenario|
  if scenario.failed?
    $feature_name = scenario.feature.name
    $scenario_name = scenario.name
    # Проверяем существование директории для отчёта, если нет - создаём её с именем функциональности
    destination = "#{$project_path}/reports/#{$feature_name}"
    if File.exist? (destination)
    else
      FileUtils.mkdir_p (destination)
    end
    # Скриним последний экран
    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = "fail_#{$scenario_name}_#{time_stamp}.png"
    screenshot_file = File.join("reports/#{$feature_name}", screenshot_name)
    $driver.screenshot(screenshot_file)
    # Уменьшаем картинку
    img_list = Magick::ImageList.new("reports/#{$feature_name}/#{screenshot_name}")
    img_small = img_list.resize_to_fit(600, 600)
    img_small.write("#{$project_path}/reports/#{$feature_name}/shrinked_#{screenshot_name}")
    img_small.destroy!
    # Вставляем скриншот в отчёт
    embed("#{$project_path}/reports/#{$feature_name}/shrinked_#{screenshot_name}", "image/png", screenshot_name)
  end
  $driver.driver_quit
end
