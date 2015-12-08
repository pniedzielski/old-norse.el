;;; old-norse.el --- oldnorse-postfix input method
;;
;; Copyright (C) 2015, Patrick M. Niedzielski.
;;
;; Filename:    old-norse.el
;; Description: Old Norse input method with postfix modifiers
;; Author:      Patrick M. Niedzielski <patrick@pniedzielski.net>
;; Created:     2015-12-08
;; Version:     1.0
;; URL:         https://github.com/pniedzielski/old-norse.el/
;; Keywords:    i18n
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; Old Norse input method with postfix modifiers.  This file is based
;; on the icelandic-postfix input method that comes included with
;; Emacs, but adds input methods for Ę, Ø, Œ, and Ǫ.
;;
;; The following key sequences are recognized (as well as lowercase
;; versions):
;;
;; A' -> Á
;; E' -> É
;; I' -> Í
;; O' -> Ó
;; U' -> Ú
;; Y' -> Ý
;; E, -> Ę
;; AE -> Æ
;; O/ -> Ø
;; OE -> Œ
;; O, -> Ǫ
;; D/ -> Ð (eth)
;; T/ -> Þ (thorn)
;;
;; Doubling the postfix separates the letter and postfix: e.g. a'' ->
;; a'.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(require 'quail)
(quail-define-package
 "oldnorse-postfix" "Latin-1" "ON<" t
 "Old Norse input method with postfix modifiers

A' -> Á
E' -> É
I' -> Í
O' -> Ó
U' -> Ú
Y' -> Ý
E, -> Ę
AE -> Æ
O/ -> Ø
OE -> Œ
O, -> Ǫ
D/ -> Ð (eth)
T/ -> Þ (thorn)

Doubling the postfix separates the letter and postfix: e.g. a'' -> a'
" nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 ("A'" ?Á)
 ("a'" ?á)
 ("E'" ?É)
 ("e'" ?é)
 ("I'" ?Í)
 ("i'" ?í)
 ("O'" ?Ó)
 ("o'" ?ó)
 ("U'" ?Ú)
 ("u'" ?ú)
 ("Y'" ?Ý)
 ("y'" ?ý)
 ("E," ?Ę)
 ("e," ?ę)
 ("AE" ?Æ)
 ("ae" ?æ)
 ("O/" ?Ø)
 ("o/" ?ø)
 ("OE" ?Œ)
 ("oe" ?œ)
 ("O," ?Ǫ)
 ("o," ?ǫ)
 ("D/" ?Ð)
 ("d/" ?ð)
 ("T/" ?Þ)
 ("t/" ?þ)

 ("A''" ["A'"])
 ("a''" ["a'"])
 ("E''" ["E'"])
 ("e''" ["e'"])
 ("I''" ["I'"])
 ("i''" ["i'"])
 ("O''" ["O'"])
 ("o''" ["o'"])
 ("U''" ["U'"])
 ("u''" ["u'"])
 ("Y''" ["Y'"])
 ("y''" ["y'"])
 ("E,," ["E,"])
 ("e,," ["e,"])
 ("AEE" ["AE"])
 ("aee" ["ae"])
 ("O//" ["O/"])
 ("o//" ["o/"])
 ("OEE" ["OE"])
 ("oee" ["oe"])
 ("O,," ["O,"])
 ("o,," ["o,"])
 ("D//" ["D/"])
 ("d//" ["d/"])
 ("T//" ["T/"])
 ("t//" ["t/"]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; old-norse.el ends here
