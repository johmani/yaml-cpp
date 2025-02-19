module;

#include <yaml-cpp/yaml.h>

export module YAML;

export namespace YAML {

    using YAML::Emitter;
    using YAML::Node;

    using YAML::LoadFile;

	using YAML::operator<<;
	using YAML::operator==;
	using YAML::operator!=;
}