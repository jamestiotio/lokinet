#ifndef LLARP_ROUTER_HPP
#define LLARP_ROUTER_HPP
#include <llarp/link.h>
#include <llarp/router.h>
#include <functional>

#include "mem.hpp"

namespace llarp {
struct router_links {
  llarp_link *link = nullptr;
  router_links *next = nullptr;
};

}  // namespace llarp

struct llarp_router {
  bool ready;
  struct llarp_threadpool *tp;
  llarp::router_links links;
  llarp_crypto crypto;
  llarp_msg_muxer muxer;
  llarp_path_context *paths;

  static void *operator new(size_t sz) {
    return llarp_g_mem.alloc(sz, llarp::alignment<llarp_router>());
  }

  static void operator delete(void *ptr) { llarp_g_mem.free(ptr); }

  llarp_router();
  ~llarp_router();

  void AddLink(struct llarp_link *link);

  void ForEachLink(std::function<void(llarp_link *)> visitor);

  void Close();

  bool Ready();
};

#endif
