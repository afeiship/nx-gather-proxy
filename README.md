# nx-gather-proxy
> Gather proxy for nx.

## installation
```rb
# from gem
gem 'nx-gather-proxy'
# from git
gem 'nx-gather-proxy', git: 'git@github.com:afeiship/nx-gather-proxy.git'
```

## usage
```rb
Nx::GatherProxy::fetch

# results
[
    {
        :ip=>"220.174.236.211", 
        :port=>8091
    }, 
    {
        :ip=>"122.5.107.172", 
        :port=>9999
    }
    # ...
]
```

## build/publish
```shell
# build
gem build nx-gather-proxy.gemspec

# publish
gem push nx-gather-proxy-0.1.0.gem
```

## resources
- https://proxygather.com/proxylist/country?c=China