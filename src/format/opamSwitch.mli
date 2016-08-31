(**************************************************************************)
(*                                                                        *)
(*    Copyright 2012-2015 OCamlPro                                        *)
(*    Copyright 2012 INRIA                                                *)
(*                                                                        *)
(*  All rights reserved. This file is distributed under the terms of the  *)
(*  GNU Lesser General Public License version 2.1, with the special       *)
(*  exception on linking described in the file LICENSE.                   *)
(*                                                                        *)
(**************************************************************************)

(** The type for switch names *)

include OpamStd.ABSTRACT

(** System switch name *)
val unset: t

(** Display an error message when a switch is not installed. *)
val not_installed: t -> 'a

(** Determines wether this switch is internal (bound to a prefix within the opam
    root) or living somewhere else, in which case its prefix dir is inferred
    from its name using [get_root] *)
val is_external: t -> bool

(** Returns the root directory of the switch with the given name, assuming the
    given opam root *)
val get_root: OpamFilename.Dir.t -> t -> OpamFilename.Dir.t
