Return-Path: <open-iscsi+bncBCG5HL4D24JBBSGI2PUAKGQEQMF7TMA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC0958631
	for <lists+open-iscsi@lfdr.de>; Thu, 27 Jun 2019 17:44:15 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id z1sf1810004pfb.7
        for <lists+open-iscsi@lfdr.de>; Thu, 27 Jun 2019 08:44:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1561650248; cv=pass;
        d=google.com; s=arc-20160816;
        b=tpZXN49lUrU/afRYmPAqtflFJSoyLignTQUK+p70j49SYbfaDiLswEwtbcg0VgM+GQ
         RsjLHC1YYTcBGUxAr5pPQE++gaUBvHTTybjytfKhPpLScjPsSB6ME61f8FYs50jAR91r
         PG/tW3VrKCsq8mqlFSq8VEGVIreiWFnOxupVfuFqVkGVeQqPvusJyJx4SsUey8Y5EFt1
         NQdJ5n4sBKTjGH7MaVjN0bJq/Eb3HXmNAcOO7qLO3syT5PF7QdjYBnSCi3Sc8w5FbRBE
         BOHEEaQ+RdTyMmAvUFg4lu8HosU8sR111ufIzNaPrC4RPP+AeushP9DSHv6VpIKey9qY
         hj4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Ms+/8u+fkljV1EMWByascZbDLl9BkqK2PGqGRxDLYbg=;
        b=BMONBRwnz/KrsSdphQToGqFYfUU9y9yw3MupsFDtayQ4TbmIiw8z9lkzuShGzUC7PN
         R0FVQ8elemtC8u81JWlihWoLvgD4trDi7LrYO0CcPJ7ehXjrdrfTEgOsUv6XGvUJZhJ9
         eed2NDnPhlHsj3wuwhKMTwIi1zJBj+3D9d/qeDfJTxuD6F8CSIQnSZLFVTmh/74hiNSL
         2o779Ds/RS7BmDY8IWlv9MeJs+hEMkjRaxYaEukYoRLsiGbMi/Jhk439+LVw1vZ3PQma
         cOPJRcSSQv2eH6EOAUHjPsqXorrZLrEsh6CjlN3iBucRhzjrQKjx4/SHNqu69dGIFpSO
         rpWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OCJwCEw9;
       spf=pass (google.com: domain of randy.broman@gmail.com designates 2607:f8b0:4864:20::e31 as permitted sender) smtp.mailfrom=randy.broman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ms+/8u+fkljV1EMWByascZbDLl9BkqK2PGqGRxDLYbg=;
        b=E1NousFX+YX4UvO6pMll8ca+YePLXR8hV99ptvcHPfkQmOap71y2s+nVXse9IamHxA
         Oh8/SvjyLMREOEcJ0PtaWgs+ldwN43Kalkh5wdKIjlOyuSyfzm4fyWjuKBVkDaFq/CVl
         h3c/DJmLpiK/RxtWrAuhl1O5RBd4s4J6lwWD24HRCjTNltafmjhNiUE9HRwY0Gaz2Uxu
         w3q3LRWUdKOpFP6xTVV4P2WQmc4vtZbkNY0dAeDSaYRxHddwHzlAVCgv3Gxq5OR6YVQV
         5VnZXmx6s90e3Hv0wAMK6mV2Vq8h7np9ops6CfGAVkJWkcbRo+whauounoh4FVjO748B
         MBfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ms+/8u+fkljV1EMWByascZbDLl9BkqK2PGqGRxDLYbg=;
        b=qj+ukPZPp7fgkYA5ImacQf9R8wxB3qdG/rBw7c2fJjUKp9A4rRYnUXDPdr5hy8YELd
         +1YJPVQBpdm4Q8MOXEQldUafB0OjgN1WotbkCMEsal0AkLMhcP52yBev+9dSRtGL7qGm
         2sjjzFk/2aZcQUCK3OJoKku8bnPtp5RMHtnRwm3e/KkoJHMmWkz/o/Y6k67o8mzX5YkK
         GsBDHFE4GLVi21eNJ9bIkwJfD67tmGzqNvtyu1aExCtCP4PtCyZ6MMsPzohVK61eS2yF
         EUUlLfRL7YUoU7YB3h79EXImXdBJtHzdunpPk063Qvo6mPgCHdgu3UFSXETVdN5dkn/u
         GX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ms+/8u+fkljV1EMWByascZbDLl9BkqK2PGqGRxDLYbg=;
        b=E1x/BCm7/qSb6Jyn+WmBoTdTJoKf8Ecc3O8XmcKC1K4qHTV9WERZywkPvOIMukIs0N
         8jW40UPva3jz5nBUga5wRjP3R1kHH3A7GkbjmFY0LprT7gY0MgpFZSN2vde1lRFKgAcr
         /ru2dBOspgwfSk67thDaGGv6St18c5XA0YtJ7IoYm2TDjHRINxWlEwkhCMjMIN7j/s2o
         7s7gTeHDL5sBQFkiz/WTAHazQ2WCJUcPLcOIb5yYteQRMYz6cq9h60QJtpqcds/iRoEo
         Qxq7SevIW+pdzLRsjrWa+gW8nEehKh4xu+z9AYMHhRleU8VNbwW1K9AJ8Vrn6v2oaJQ1
         VPoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWdK4dqSSAorRSlL3WDuvlr+JkXkeOWl14a962ymFznrxj1GqC8
	bLdSvOFCYggF3MOAHUDX2PE=
X-Google-Smtp-Source: APXvYqy0slqhRZMKEwCFtuHKLvpcPIF0UMWiMUOy/xxj6Bu/+zXK98n6FlMTEwjkgNfdZjTI1mJmcQ==
X-Received: by 2002:a17:90a:ac13:: with SMTP id o19mr6807851pjq.143.1561650248582;
        Thu, 27 Jun 2019 08:44:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:8609:: with SMTP id f9ls1919334plo.7.gmail; Thu, 27
 Jun 2019 08:44:08 -0700 (PDT)
X-Received: by 2002:a17:902:760a:: with SMTP id k10mr1757331pll.83.1561650247990;
        Thu, 27 Jun 2019 08:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1561650247; cv=none;
        d=google.com; s=arc-20160816;
        b=EgfiKdUpTFG+mik+aHdGcloM7m5O63tzoWD4YcgNwYAVaKnGHAbnT/1O0W0i0FV8PJ
         9u0UovzCLsa+p1f6Qca6KXf43S9Fn6JiXUCuubHeEZe+9s6/ptTpvmwdhy9HvDmu9KMf
         aRwc1aTl2aN17LOm+ZOVN7pgeAQR1nd7G0Un1lb87Y0CkOp3TyN4BxbNAq2P8WyTRRbv
         Jt3M28j6bzk03rPlQCe7RLkn/8OriLxjoeIxZnHeGfAOfsm4gO9VCCxadZ/pZewvYgmA
         yJrH9TzoMYiI2LhivgDhArBJsJUptxQcYG8oEhYBrM4UGKLGnqJ41eL6pMEZWvhX3mFX
         Sh5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=7dGHR5uqnwoL9xrLEEM3GkrcK63N/Wf6GsTBpAnompE=;
        b=YnoitgVeCwUsnpHdqaTHL+tEtgrzVJETvKV/r3+7HnrnuILT8a70GZgWi7SxtqUG2S
         ydFgsjr8421MLThZpQOOEFJFAbCJfkxYCyphYrEM9tJ3u//YvMwxbOSU8pgJYLK4jY1O
         HrAIBOsEwI9ZqxuA3L8sFpyabEjrPDPXt7DLVlj8qmhJQmeHMrkdIETsqWWtt/kmqG9W
         T1TFMFpZ1ao2qIJ+k0KZ8zLqYodpI4NZRgpPlCe1RDmN7ThwKj6j1Hc0LdWKGm0jA4nI
         8OOOthpOXlteLgbtnpmfwPiIlJfpYlOdMH9CCP2tmqzGD8pbggz9vWH+7EEj9fYXKyx8
         Iytg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OCJwCEw9;
       spf=pass (google.com: domain of randy.broman@gmail.com designates 2607:f8b0:4864:20::e31 as permitted sender) smtp.mailfrom=randy.broman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com. [2607:f8b0:4864:20::e31])
        by gmr-mx.google.com with ESMTPS id cl17si95090plb.3.2019.06.27.08.44.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Jun 2019 08:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of randy.broman@gmail.com designates 2607:f8b0:4864:20::e31 as permitted sender) client-ip=2607:f8b0:4864:20::e31;
Received: by mail-vs1-xe31.google.com with SMTP id u124so1949373vsu.2
        for <open-iscsi@googlegroups.com>; Thu, 27 Jun 2019 08:44:07 -0700 (PDT)
X-Received: by 2002:a67:eecb:: with SMTP id o11mr1404910vsp.149.1561650246696;
 Thu, 27 Jun 2019 08:44:06 -0700 (PDT)
MIME-Version: 1.0
References: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
 <2604ac31-fea0-4963-9077-1942c71f8a85@googlegroups.com> <37c0b6be-68ec-474e-b95d-e9450bfc4000@googlegroups.com>
 <8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76@googlegroups.com>
In-Reply-To: <8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76@googlegroups.com>
From: Randy Broman <randy.broman@gmail.com>
Date: Thu, 27 Jun 2019 08:43:55 -0700
Message-ID: <CAAixNYGu7RLUwvYZvFV8LzuorUcAXpwjXbuA6PqoeZmDL1rX1g@mail.gmail.com>
Subject: Re: Open-iscsi slow boot
To: open-iscsi@googlegroups.com
Content-Type: multipart/mixed; boundary="00000000000037ef20058c500811"
X-Original-Sender: randy.broman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OCJwCEw9;       spf=pass
 (google.com: domain of randy.broman@gmail.com designates 2607:f8b0:4864:20::e31
 as permitted sender) smtp.mailfrom=randy.broman@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--00000000000037ef20058c500811
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I appreciate your interest, and I've attached a text file which I hope
is responsive to your request.

R

On Wed, Jun 26, 2019 at 8:55 AM The Lee-Man <leeman.duncan@gmail.com> wrote=
:
>
> On Tuesday, June 25, 2019 at 11:31:03 AM UTC-4, Randy Broman wrote:
>>
>> Thanks for your response. I'm using Kubuntu 19.04. I disabled the iscsi =
service and in fact the boot was much faster:
>>
>>
> I'm not understanding what's going on with your system. I suspect there's=
 more than just an unused open-iscsi initiator involved here.
>
> Do you have any iscsi targets set up? Existing sessions?
>
> I downloaded kunbuntu, and open-iscsi.service is enabled by default. Can =
you give me the systemctl status for open-iscsi.service, iscsid.socket, and=
 iscsid.service? Also, an "ls" of /etc/iscsi/nodes and /sys/class/iscsi_ses=
sion?
>
> And please don't assume that the numbers that "systemd-analyze blame" sho=
w -- they don't always mean what you think. Can you just please time the bo=
ot (or reboot) sequence yourself, using the log files?
>
> On my test VM, I have iscsid.socket, iscsid.service, and open-iscsi.servi=
ce at their default settings, but I have never discovered any targets, so I=
 don't have any history of nodes or sessions. And when I run "systemd-analy=
ze blame", iscsi does not show up at all.
>
> --
> You received this message because you are subscribed to a topic in the Go=
ogle Groups "open-iscsi" group.
> To unsubscribe from this topic, visit https://groups.google.com/d/topic/o=
pen-iscsi/NK2sBOEzSQE/unsubscribe.
> To unsubscribe from this group and all its topics, send an email to open-=
iscsi+unsubscribe@googlegroups.com.
> To post to this group, send email to open-iscsi@googlegroups.com.
> Visit this group at https://groups.google.com/group/open-iscsi.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/open-iscsi/8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAAixNYGu7RLUwvYZvFV8LzuorUcAXpwjXbuA6PqoeZmDL1rX1g%40mail.gmail=
.com.
For more options, visit https://groups.google.com/d/optout.

--00000000000037ef20058c500811
Content-Type: text/plain; charset="UTF-8"; name="open-iscsi.txt"
Content-Disposition: attachment; filename="open-iscsi.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_jxeu6hf80>
X-Attachment-Id: f_jxeu6hf80

PiBJJ20gbm90IHVuZGVyc3RhbmRpbmcgd2hhdCdzIGdvaW5nIG9uIHdpdGggeW91ciBzeXN0ZW0u
IEkgc3VzcGVjdCB0aGVyZSdzIG1vcmUgdGhhbiBqdXN0IGFuIHVudXNlZCBvcGVuLWlzY3NpIGlu
aXRpYXRvciBpbnZvbHZlZCAKPiBoZXJlLgoKUmVxdWVzdGVkIGluZm8gaXMgYmVsb3csIGhvcGVm
dWxseSBJIGNvbGxlY3RlZCB0aGUgcmlnaHQgc3R1ZmYsIGlmIG5vdCBsZXQgbWUga25vdy4gSSBz
ZWUgbWVzc2FnZXMgbGlrZSAibm8gcm91dGUgdG8gaG9zdCIgYW5kICJjb3VsZCBub3QgbG9nIGlu
IiAodG8gdGFyZ2V0KSwgd2hpY2ggZG9uJ3QgbWFrZSBzZW5zZSB0byBtZSwgYXMgdGhlIFFOQVAg
dGFyZ2V0IE5BUyBpcyBjb250aW51YWxseSBydW5uaW5nLCBwaW5nLWFibGUsIGFuZCBzaG91bGQg
dGh1cyBiZSBhdmFpbGFibGUsIGFuZCB0aHVzIGl0IHNlZW1zIGxpa2UgdGhlIGluaXRpYXRvciBp
cyBjb3JyZWN0bHkgY29uZmlndXJlZCBhcyB0aGUgY29ubmVjdGlvbiBkb2VzIHN1Y2NlZWQgZXZl
bnR1YWxseS4gTWF5YmUgdGhlIGRlbGF5IGlzIGluIHRoZSBRTkFQIG5lZWRpbmcgdGltZSB0byB3
YWtlIHVwIHVwb24gdGhlIHJlcXVlc3RzIGJ5IHRoZSBpbml0aWF0b3IgdXBvbiBpdCdzIGJvb3Q/
Pz8/CgooUU5BUCB1c2VzIHRoZWlyIG93biB2YXJpYW50IG9mIGxpbnV4LCBhbmQgSSBjYW4gc3No
IGludG8gaXQgYW5kIGNvbGxlY3QgaW5mbyBvbiB0aGUgUU5BUC90YXJnZXRzIGlmIHlvdSBjYW4g
Z2l2ZSBtZSBndWlkYW5jZSBvbiB3aGF0IHRvIGNvbGxlY3QpCgo+IERvIHlvdSBoYXZlIGFueSBp
c2NzaSB0YXJnZXRzIHNldCB1cD8gRXhpc3Rpbmcgc2Vzc2lvbnM/CgpUaGVyZSdzIG9uZSB0YXJn
ZXQ6CgokIHN1ZG8gaXNjc2lhZG0gLW0gc2Vzc2lvbiAtUCAzCmlTQ1NJIFRyYW5zcG9ydCBDbGFz
cyB2ZXJzaW9uIDIuMC04NzAKdmVyc2lvbiAyLjAtODc0ClRhcmdldDogaXFuLjIwMDQtMDQuY29t
LnFuYXA6dHMtNDczOmlzY3NpLnFuYXBpc2NzaWx1LjIzNTZmZCAobm9uLWZsYXNoKQogICAgICAg
IEN1cnJlbnQgUG9ydGFsOiAxOTIuMTY4LjEuMzA6MzI2MCwxCiAgICAgICAgUGVyc2lzdGVudCBQ
b3J0YWw6IDE5Mi4xNjguMS4zMDozMjYwLDEKICAgICAgICAgICAgICAgICoqKioqKioqKioKICAg
ICAgICAgICAgICAgIEludGVyZmFjZToKICAgICAgICAgICAgICAgICoqKioqKioqKioKICAgICAg
ICAgICAgICAgIElmYWNlIE5hbWU6IGRlZmF1bHQKICAgICAgICAgICAgICAgIElmYWNlIFRyYW5z
cG9ydDogdGNwCiAgICAgICAgICAgICAgICBJZmFjZSBJbml0aWF0b3JuYW1lOiBpcW4uMjAxNS0w
Ni53b3JsZC5zZXJ2ZXI6d3d3LnNlcnZlci53b3JsZAogICAgICAgICAgICAgICAgSWZhY2UgSVBh
ZGRyZXNzOiAxOTIuMTY4LjEuMTcKICAgICAgICAgICAgICAgIElmYWNlIEhXYWRkcmVzczogPGVt
cHR5PgogICAgICAgICAgICAgICAgSWZhY2UgTmV0ZGV2OiA8ZW1wdHk+CiAgICAgICAgICAgICAg
ICBTSUQ6IDEKICAgICAgICAgICAgICAgIGlTQ1NJIENvbm5lY3Rpb24gU3RhdGU6IExPR0dFRCBJ
TgogICAgICAgICAgICAgICAgaVNDU0kgU2Vzc2lvbiBTdGF0ZTogTE9HR0VEX0lOCiAgICAgICAg
ICAgICAgICBJbnRlcm5hbCBpc2NzaWQgU2Vzc2lvbiBTdGF0ZTogTk8gQ0hBTkdFCiAgICAgICAg
ICAgICAgICAqKioqKioqKioKICAgICAgICAgICAgICAgIFRpbWVvdXRzOgogICAgICAgICAgICAg
ICAgKioqKioqKioqCiAgICAgICAgICAgICAgICBSZWNvdmVyeSBUaW1lb3V0OiAxNQogICAgICAg
ICAgICAgICAgVGFyZ2V0IFJlc2V0IFRpbWVvdXQ6IDMwCiAgICAgICAgICAgICAgICBMVU4gUmVz
ZXQgVGltZW91dDogMzAKICAgICAgICAgICAgICAgIEFib3J0IFRpbWVvdXQ6IDE1CiAgICAgICAg
ICAgICAgICAqKioqKgogICAgICAgICAgICAgICAgQ0hBUDoKICAgICAgICAgICAgICAgICoqKioq
CiAgICAgICAgICAgICAgICB1c2VybmFtZTogPGVtcHR5PgogICAgICAgICAgICAgICAgcGFzc3dv
cmQ6ICoqKioqKioqCiAgICAgICAgICAgICAgICB1c2VybmFtZV9pbjogPGVtcHR5PgogICAgICAg
ICAgICAgICAgcGFzc3dvcmRfaW46ICoqKioqKioqCiAgICAgICAgICAgICAgICAqKioqKioqKioq
KioqKioqKioqKioqKioKICAgICAgICAgICAgICAgIE5lZ290aWF0ZWQgaVNDU0kgcGFyYW1zOgog
ICAgICAgICAgICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqCiAgICAgICAgICAgICAgICBI
ZWFkZXJEaWdlc3Q6IE5vbmUKICAgICAgICAgICAgICAgIERhdGFEaWdlc3Q6IE5vbmUKICAgICAg
ICAgICAgICAgIE1heFJlY3ZEYXRhU2VnbWVudExlbmd0aDogMjYyMTQ0CiAgICAgICAgICAgICAg
ICBNYXhYbWl0RGF0YVNlZ21lbnRMZW5ndGg6IDI2MjE0NAogICAgICAgICAgICAgICAgRmlyc3RC
dXJzdExlbmd0aDogNjU1MzYKICAgICAgICAgICAgICAgIE1heEJ1cnN0TGVuZ3RoOiAyNjIxNDQK
ICAgICAgICAgICAgICAgIEltbWVkaWF0ZURhdGE6IFllcwogICAgICAgICAgICAgICAgSW5pdGlh
bFIyVDogWWVzCiAgICAgICAgICAgICAgICBNYXhPdXRzdGFuZGluZ1IyVDogMQogICAgICAgICAg
ICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqCiAgICAgICAgICAgICAgICBBdHRhY2hlZCBT
Q1NJIGRldmljZXM6CiAgICAgICAgICAgICAgICAqKioqKioqKioqKioqKioqKioqKioqKioKICAg
ICAgICAgICAgICAgIEhvc3QgTnVtYmVyOiA1ICBTdGF0ZTogcnVubmluZwogICAgICAgICAgICAg
ICAgc2NzaTUgQ2hhbm5lbCAwMCBJZCAwIEx1bjogMAogICAgICAgICAgICAgICAgICAgICAgICBB
dHRhY2hlZCBzY3NpIGRpc2sgc2RoICAgICAgICAgIFN0YXRlOiBydW5uaW5nCgoKPiBJIGRvd25s
b2FkZWQga3VuYnVudHUsIGFuZCBvcGVuLWlzY3NpLnNlcnZpY2UgaXMgZW5hYmxlZCBieSBkZWZh
dWx0LiBDYW4geW91IGdpdmUgbWUgdGhlIHN5c3RlbWN0bCBzdGF0dXMgZm9yIG9wZW4taXNjc2ku
c2VydmljZSwgPiBpc2NzaWQuc29ja2V0LCBhbmQgaXNjc2lkLnNlcnZpY2U/IEFsc28sIGFuICJs
cyIgb2YgL2V0Yy9pc2NzaS9ub2RlcyBhbmQgL3N5cy9jbGFzcy9pc2NzaV9zZXNzaW9uPwoKIyBz
eXN0ZW1jdGwgc3RhdHVzIG9wZW4taXNjc2kuc2VydmljZQril48gb3Blbi1pc2NzaS5zZXJ2aWNl
IC0gTG9naW4gdG8gZGVmYXVsdCBpU0NTSSB0YXJnZXRzCiAgIExvYWRlZDogbG9hZGVkICgvbGli
L3N5c3RlbWQvc3lzdGVtL29wZW4taXNjc2kuc2VydmljZTsgZGlzYWJsZWQ7IHZlbmRvciBwcmVz
ZXQ6IGVuYWJsZWQpCiAgIEFjdGl2ZTogZmFpbGVkIChSZXN1bHQ6IGV4aXQtY29kZSkgc2luY2Ug
VGh1IDIwMTktMDYtMjcgMDc6MjM6NTEgUERUOyA0OG1pbiBhZ28KICAgICBEb2NzOiBtYW46aXNj
c2lhZG0oOCkKICAgICAgICAgICBtYW46aXNjc2lkKDgpCiAgUHJvY2VzczogNDIzMSBFeGVjU3Rh
cnRQcmU9L2Jpbi9zeXN0ZW1jdGwgLS1xdWlldCBpcy1hY3RpdmUgaXNjc2lkLnNlcnZpY2UgKGNv
ZGU9ZXhpdGVkLCBzdGF0dXM9MC9TVUNDRVNTKQogIFByb2Nlc3M6IDQyNDAgRXhlY1N0YXJ0PS9z
YmluL2lzY3NpYWRtIC1tIG5vZGUgLS1sb2dpbmFsbD1hdXRvbWF0aWMgKGNvZGU9ZXhpdGVkLCBz
dGF0dXM9OCkKIE1haW4gUElEOiA0MjQwIChjb2RlPWV4aXRlZCwgc3RhdHVzPTgpCgpKdW4gMjcg
MDc6MjE6NDUgSmJvYXQxNyBzeXN0ZW1kWzFdOiBTdGFydGluZyBMb2dpbiB0byBkZWZhdWx0IGlT
Q1NJIHRhcmdldHMuLi4KSnVuIDI3IDA3OjIzOjUxIEpib2F0MTcgaXNjc2lhZG1bNDI0MF06IGlz
Y3NpYWRtOiBDb3VsZCBub3QgbG9naW4gdG8gW2lmYWNlOiBkZWZhdWx0LCB0YXJnZXQ6IGlxbi4y
MDA0LTA0LmNvbS5xbmFwOnRzLTQ3Mzppc2NzaS5xbmFwaXNjc2lsdS4yMzU2ZmQsIHBvcnRhbDog
MTkyLjE2OC4xLjMxLDMyNjBdLgpKdW4gMjcgMDc6MjM6NTEgSmJvYXQxNyBpc2NzaWFkbVs0MjQw
XTogaXNjc2lhZG06IGluaXRpYXRvciByZXBvcnRlZCBlcnJvciAoOCAtIGNvbm5lY3Rpb24gdGlt
ZWQgb3V0KQpKdW4gMjcgMDc6MjM6NTEgSmJvYXQxNyBpc2NzaWFkbVs0MjQwXTogaXNjc2lhZG06
IENvdWxkIG5vdCBsb2cgaW50byBhbGwgcG9ydGFscwpKdW4gMjcgMDc6MjM6NTEgSmJvYXQxNyBp
c2NzaWFkbVs0MjQwXTogTG9nZ2luZyBpbiB0byBbaWZhY2U6IGRlZmF1bHQsIHRhcmdldDogaXFu
LjIwMDQtMDQuY29tLnFuYXA6dHMtNDczOmlzY3NpLnFuYXBpc2NzaWx1LjIzNTZmZCwgcG9ydGFs
OiAxOTIuMTY4LjEuMzEsMzI2MF0gKG11bHRpcGxlKQpKdW4gMjcgMDc6MjM6NTEgSmJvYXQxNyBp
c2NzaWFkbVs0MjQwXTogTG9nZ2luZyBpbiB0byBbaWZhY2U6IGRlZmF1bHQsIHRhcmdldDogaXFu
LjIwMDQtMDQuY29tLnFuYXA6dHMtNDczOmlzY3NpLnFuYXBpc2NzaWx1LjIzNTZmZCwgcG9ydGFs
OiAxOTIuMTY4LjEuMzAsMzI2MF0gKG11bHRpcGxlKQpKdW4gMjcgMDc6MjM6NTEgSmJvYXQxNyBp
c2NzaWFkbVs0MjQwXTogTG9naW4gdG8gW2lmYWNlOiBkZWZhdWx0LCB0YXJnZXQ6IGlxbi4yMDA0
LTA0LmNvbS5xbmFwOnRzLTQ3Mzppc2NzaS5xbmFwaXNjc2lsdS4yMzU2ZmQsIHBvcnRhbDogMTky
LjE2OC4xLjMwLDMyNjBdIHN1Y2Nlc3NmdWwuCkp1biAyNyAwNzoyMzo1MSBKYm9hdDE3IHN5c3Rl
bWRbMV06IG9wZW4taXNjc2kuc2VydmljZTogTWFpbiBwcm9jZXNzIGV4aXRlZCwgY29kZT1leGl0
ZWQsIHN0YXR1cz04L24vYQpKdW4gMjcgMDc6MjM6NTEgSmJvYXQxNyBzeXN0ZW1kWzFdOiBvcGVu
LWlzY3NpLnNlcnZpY2U6IEZhaWxlZCB3aXRoIHJlc3VsdCAnZXhpdC1jb2RlJy4KSnVuIDI3IDA3
OjIzOjUxIEpib2F0MTcgc3lzdGVtZFsxXTogRmFpbGVkIHRvIHN0YXJ0IExvZ2luIHRvIGRlZmF1
bHQgaVNDU0kgdGFyZ2V0cy4KCgojIHN5c3RlbWN0bCBzdGF0dXMgaXNjc2lkLnNvY2tldApVbml0
IGlzY3NpZC5zb2NrZXQgY291bGQgbm90IGJlIGZvdW5kLgoKIyBzeXN0ZW1jdGwgc3RhdHVzIGlz
Y3NpZC5zZXJ2aWNlCuKXjyBpc2NzaWQuc2VydmljZSAtIGlTQ1NJIGluaXRpYXRvciBkYWVtb24g
KGlzY3NpZCkKICAgTG9hZGVkOiBsb2FkZWQgKC9saWIvc3lzdGVtZC9zeXN0ZW0vaXNjc2lkLnNl
cnZpY2U7IGVuYWJsZWQ7IHZlbmRvciBwcmVzZXQ6IGVuYWJsZWQpCiAgIEFjdGl2ZTogYWN0aXZl
IChydW5uaW5nKSBzaW5jZSBUaHUgMjAxOS0wNi0yNyAwNzoxODo1NCBQRFQ7IDU4bWluIGFnbwog
ICAgIERvY3M6IG1hbjppc2NzaWQoOCkKICBQcm9jZXNzOiAxODk4IEV4ZWNTdGFydFByZT0vbGli
L29wZW4taXNjc2kvc3RhcnR1cC1jaGVja3Muc2ggKGNvZGU9ZXhpdGVkLCBzdGF0dXM9MC9TVUND
RVNTKQogIFByb2Nlc3M6IDE5MTMgRXhlY1N0YXJ0PS9zYmluL2lzY3NpZCAoY29kZT1leGl0ZWQs
IHN0YXR1cz0wL1NVQ0NFU1MpCiBNYWluIFBJRDogMTkxOCAoaXNjc2lkKQogICAgVGFza3M6IDIg
KGxpbWl0OiA0OTE1KQogICBNZW1vcnk6IDQuOU0KICAgQ0dyb3VwOiAvc3lzdGVtLnNsaWNlL2lz
Y3NpZC5zZXJ2aWNlCiAgICAgICAgICAg4pSc4pSAMTkxNyAvc2Jpbi9pc2NzaWQKICAgICAgICAg
ICDilJTilIAxOTE4IC9zYmluL2lzY3NpZAoKSnVuIDI3IDA3OjIyOjUzIEpib2F0MTcgaXNjc2lk
WzE5MTddOiBjb25uZWN0IHRvIDE5Mi4xNjguMS4zMTozMjYwIGZhaWxlZCAoTm8gcm91dGUgdG8g
aG9zdCkKSnVuIDI3IDA3OjIzOjAwIEpib2F0MTcgaXNjc2lkWzE5MTddOiBjb25uZWN0IHRvIDE5
Mi4xNjguMS4zMTozMjYwIGZhaWxlZCAoTm8gcm91dGUgdG8gaG9zdCkKSnVuIDI3IDA3OjIzOjA3
IEpib2F0MTcgaXNjc2lkWzE5MTddOiBjb25uZWN0IHRvIDE5Mi4xNjguMS4zMTozMjYwIGZhaWxl
ZCAoTm8gcm91dGUgdG8gaG9zdCkKSnVuIDI3IDA3OjIzOjE0IEpib2F0MTcgaXNjc2lkWzE5MTdd
OiBjb25uZWN0IHRvIDE5Mi4xNjguMS4zMTozMjYwIGZhaWxlZCAoTm8gcm91dGUgdG8gaG9zdCkK
SnVuIDI3IDA3OjIzOjIxIEpib2F0MTcgaXNjc2lkWzE5MTddOiBjb25uZWN0IHRvIDE5Mi4xNjgu
MS4zMTozMjYwIGZhaWxlZCAoTm8gcm91dGUgdG8gaG9zdCkKSnVuIDI3IDA3OjIzOjI4IEpib2F0
MTcgaXNjc2lkWzE5MTddOiBjb25uZWN0IHRvIDE5Mi4xNjguMS4zMTozMjYwIGZhaWxlZCAoTm8g
cm91dGUgdG8gaG9zdCkKSnVuIDI3IDA3OjIzOjM1IEpib2F0MTcgaXNjc2lkWzE5MTddOiBjb25u
ZWN0IHRvIDE5Mi4xNjguMS4zMTozMjYwIGZhaWxlZCAoTm8gcm91dGUgdG8gaG9zdCkKSnVuIDI3
IDA3OjIzOjQyIEpib2F0MTcgaXNjc2lkWzE5MTddOiBjb25uZWN0IHRvIDE5Mi4xNjguMS4zMToz
MjYwIGZhaWxlZCAoTm8gcm91dGUgdG8gaG9zdCkKSnVuIDI3IDA3OjIzOjQ5IEpib2F0MTcgaXNj
c2lkWzE5MTddOiBjb25uZWN0IHRvIDE5Mi4xNjguMS4zMTozMjYwIGZhaWxlZCAoTm8gcm91dGUg
dG8gaG9zdCkKSnVuIDI3IDA3OjIzOjUyIEpib2F0MTcgaXNjc2lkWzE5MTddOiBDb25uZWN0aW9u
LTE6MCB0byBbdGFyZ2V0OiBpcW4uMjAwNC0wNC5jb20ucW5hcDp0cy00NzM6aXNjc2kucW5hcGlz
Y3NpbHUuMjM1NmZkLCBwb3J0YWw6IDE5Mi4xNjguMS4zMSwzMjYwXSB0aHJvdWdoIFtpZmFjZTog
ZGVmYXVsdF0gaXMgc2h1dGRvd24KCmxzIC1sIC9ldGMvaXNjc2kvbm9kZXMKdG90YWwgNApkcnct
LS0tLS0tIDcgcm9vdCByb290IDQwOTYgSnVuIDI3IDA4OjA2IGlxbi4yMDA0LTA0LmNvbS5xbmFw
OnRzLTQ3Mzppc2NzaS5xbmFwaXNjc2lsdS4yMzU2ZmQKCiMgbHMgLWwgL3N5cy9jbGFzcy9pc2Nz
aV9zZXNzaW9uCnRvdGFsIDAKbHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAwIEp1biAyNyAwNzoyMSBz
ZXNzaW9uMSAtPiAuLi8uLi9kZXZpY2VzL3BsYXRmb3JtL2hvc3Q1L3Nlc3Npb24xL2lzY3NpX3Nl
c3Npb24vc2Vzc2lvbjEKCgo+IEFuZCBwbGVhc2UgZG9uJ3QgYXNzdW1lIHRoYXQgdGhlIG51bWJl
cnMgdGhhdCAic3lzdGVtZC1hbmFseXplIGJsYW1lIiBzaG93IC0tIHRoZXkgZG9uJ3QgYWx3YXlz
IG1lYW4gd2hhdCB5b3UgdGhpbmsuIENhbiB5b3UganVzdCA+IHBsZWFzZSB0aW1lIHRoZSBib290
IChvciByZWJvb3QpIHNlcXVlbmNlIHlvdXJzZWxmLCB1c2luZyB0aGUgbG9nIGZpbGVzPwoKIyBj
YXQgL3Zhci9sb2cvc3lzbG9nIHwgZ3JlcCBpc2NzaQpKdW4gMjcgMDc6MTg6NTQgSmJvYXQxNyBz
eXN0ZW1kWzFdOiBTdGFydGluZyBpU0NTSSBpbml0aWF0b3IgZGFlbW9uIChpc2NzaWQpLi4uCkp1
biAyNyAwNzoxODo1NCBKYm9hdDE3IGlzY3NpZDogaVNDU0kgbG9nZ2VyIHdpdGggcGlkPTE5MTcg
c3RhcnRlZCEKSnVuIDI3IDA3OjE4OjU0IEpib2F0MTcgc3lzdGVtZFsxXTogU3RhcnRlZCBpU0NT
SSBpbml0aWF0b3IgZGFlbW9uIChpc2NzaWQpLgpKdW4gMjcgMDc6MTg6NTQgSmJvYXQxNyBpc2Nz
aWQ6IGlTQ1NJIGRhZW1vbiB3aXRoIHBpZD0xOTE4IHN0YXJ0ZWQhCkp1biAyNyAwNzoyMTo0NiBK
Ym9hdDE3IGlzY3NpZDogQ29ubmVjdGlvbjE6MCB0byBbdGFyZ2V0OiBpcW4uMjAwNC0wNC5jb20u
cW5hcDp0cy00NzM6aXNjc2kucW5hcGlzY3NpbHUuMjM1NmZkLCBwb3J0YWw6IDE5Mi4xNjguMS4z
MCwzMjYwXSB0aHJvdWdoIFtpZmFjZTogZGVmYXVsdF0gaXMgb3BlcmF0aW9uYWwgbm93Ckp1biAy
NyAwNzoyMTo1MCBKYm9hdDE3IGlzY3NpZDogY29ubmVjdCB0byAxOTIuMTY4LjEuMzE6MzI2MCBm
YWlsZWQgKE5vIHJvdXRlIHRvIGhvc3QpCkp1biAyNyAwNzoyMjowNCBKYm9hdDE3IGlzY3NpZDog
bWVzc2FnZSByZXBlYXRlZCAyIHRpbWVzOiBbIGNvbm5lY3QgdG8gMTkyLjE2OC4xLjMxOjMyNjAg
ZmFpbGVkIChObyByb3V0ZSB0byBob3N0KV0KSnVuIDI3IDA3OjIyOjExIEpib2F0MTcgaXNjc2lk
OiBjb25uZWN0IHRvIDE5Mi4xNjguMS4zMTozMjYwIGZhaWxlZCAoTm8gcm91dGUgdG8gaG9zdCkK
SnVuIDI3IDA3OjIzOjQyIEpib2F0MTcgaXNjc2lkOiBtZXNzYWdlIHJlcGVhdGVkIDEzIHRpbWVz
OiBbIGNvbm5lY3QgdG8gMTkyLjE2OC4xLjMxOjMyNjAgZmFpbGVkIChObyByb3V0ZSB0byBob3N0
KV0KSnVuIDI3IDA3OjIzOjQ5IEpib2F0MTcgaXNjc2lkOiBjb25uZWN0IHRvIDE5Mi4xNjguMS4z
MTozMjYwIGZhaWxlZCAoTm8gcm91dGUgdG8gaG9zdCkKSnVuIDI3IDA3OjIzOjUxIEpib2F0MTcg
aXNjc2lhZG1bNDI0MF06IGlzY3NpYWRtOiBDb3VsZCBub3QgbG9naW4gdG8gW2lmYWNlOiBkZWZh
dWx0LCB0YXJnZXQ6IGlxbi4yMDA0LTA0LmNvbS5xbmFwOnRzLTQ3Mzppc2NzaS5xbmFwaXNjc2ls
dS4yMzU2ZmQsIHBvcnRhbDogMTkyLjE2OC4xLjMxLDMyNjBdLgpKdW4gMjcgMDc6MjM6NTEgSmJv
YXQxNyBpc2NzaWFkbVs0MjQwXTogaXNjc2lhZG06IGluaXRpYXRvciByZXBvcnRlZCBlcnJvciAo
OCAtIGNvbm5lY3Rpb24gdGltZWQgb3V0KQpKdW4gMjcgMDc6MjM6NTEgSmJvYXQxNyBpc2NzaWFk
bVs0MjQwXTogaXNjc2lhZG06IENvdWxkIG5vdCBsb2cgaW50byBhbGwgcG9ydGFscwpKdW4gMjcg
MDc6MjM6NTEgSmJvYXQxNyBpc2NzaWFkbVs0MjQwXTogTG9nZ2luZyBpbiB0byBbaWZhY2U6IGRl
ZmF1bHQsIHRhcmdldDogaXFuLjIwMDQtMDQuY29tLnFuYXA6dHMtNDczOmlzY3NpLnFuYXBpc2Nz
aWx1LjIzNTZmZCwgcG9ydGFsOiAxOTIuMTY4LjEuMzEsMzI2MF0gKG11bHRpcGxlKQpKdW4gMjcg
MDc6MjM6NTEgSmJvYXQxNyBpc2NzaWFkbVs0MjQwXTogTG9nZ2luZyBpbiB0byBbaWZhY2U6IGRl
ZmF1bHQsIHRhcmdldDogaXFuLjIwMDQtMDQuY29tLnFuYXA6dHMtNDczOmlzY3NpLnFuYXBpc2Nz
aWx1LjIzNTZmZCwgcG9ydGFsOiAxOTIuMTY4LjEuMzAsMzI2MF0gKG11bHRpcGxlKQpKdW4gMjcg
MDc6MjM6NTEgSmJvYXQxNyBpc2NzaWFkbVs0MjQwXTogTG9naW4gdG8gW2lmYWNlOiBkZWZhdWx0
LCB0YXJnZXQ6IGlxbi4yMDA0LTA0LmNvbS5xbmFwOnRzLTQ3Mzppc2NzaS5xbmFwaXNjc2lsdS4y
MzU2ZmQsIHBvcnRhbDogMTkyLjE2OC4xLjMwLDMyNjBdIHN1Y2Nlc3NmdWwuCkp1biAyNyAwNzoy
Mzo1MSBKYm9hdDE3IHN5c3RlbWRbMV06IG9wZW4taXNjc2kuc2VydmljZTogTWFpbiBwcm9jZXNz
IGV4aXRlZCwgY29kZT1leGl0ZWQsIHN0YXR1cz04L24vYQpKdW4gMjcgMDc6MjM6NTEgSmJvYXQx
NyBzeXN0ZW1kWzFdOiBvcGVuLWlzY3NpLnNlcnZpY2U6IEZhaWxlZCB3aXRoIHJlc3VsdCAnZXhp
dC1jb2RlJy4KSnVuIDI3IDA3OjIzOjUyIEpib2F0MTcgaXNjc2lkOiBDb25uZWN0aW9uLTE6MCB0
byBbdGFyZ2V0OiBpcW4uMjAwNC0wNC5jb20ucW5hcDp0cy00NzM6aXNjc2kucW5hcGlzY3NpbHUu
MjM1NmZkLCBwb3J0YWw6IDE5Mi4xNjguMS4zMSwzMjYwXSB0aHJvdWdoIFtpZmFjZTogZGVmYXVs
dF0gaXMgc2h1dGRvd24uCgo+IE9uIG15IHRlc3QgVk0sIEkgaGF2ZSBpc2NzaWQuc29ja2V0LCBp
c2NzaWQuc2VydmljZSwgYW5kIG9wZW4taXNjc2kuc2VydmljZSBhdCB0aGVpciBkZWZhdWx0IHNl
dHRpbmdzLCBidXQgSSBoYXZlIG5ldmVyIGRpc2NvdmVyZWQgPiBhbnkgdGFyZ2V0cywgc28gSSBk
b24ndCBoYXZlIGFueSBoaXN0b3J5IG9mIG5vZGVzIG9yIHNlc3Npb25zLiBBbmQgd2hlbiBJIHJ1
biAic3lzdGVtZC1hbmFseXplIGJsYW1lIiwgaXNjc2kgZG9lcyBub3Qgc2hvdyB1cCBhdCAKPiBh
bGwuCg==
--00000000000037ef20058c500811--
