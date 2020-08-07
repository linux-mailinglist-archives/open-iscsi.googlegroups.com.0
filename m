Return-Path: <open-iscsi+bncBC755V5RXMKBBAFLW74QKGQEIECZVHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DF723F4DD
	for <lists+open-iscsi@lfdr.de>; Sat,  8 Aug 2020 00:28:19 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id y5sf1850331ota.0
        for <lists+open-iscsi@lfdr.de>; Fri, 07 Aug 2020 15:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0tq0t0/42ZBdFHpgtRWmu1FYoX94iLS97TtB23eTKBk=;
        b=ZcDiM2ceCHOCUvlTPvuwvv2vtn9ODE/TK8sg1RxHZh4BzTgvLgZWhvE6VNDe9+O8bL
         hnsNOB/MkuJyXze0sm5IzGlLMX41t8qxpVGSZE77dlMpKhP7a3KxOmSbpiCK13vfJZq+
         HU4pjcORh4lJeNbJb79a7Yk92LaYHPrRNAvGCxTG9fkZRjIO9lREvQ9e8tMNzxUjDpXs
         e0S+5q1KYoQlwAfYJvUPBXFwjyDRywd9LlmpoZt8EC3C6GcR5whVNB8EqP4/DdLNb5eN
         3SWuea9vtMEN12nI9CyH41GLofDmnXA8wVtL26oGlUF232/uDo+FdYBspryxUNrgl/Cd
         JcVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0tq0t0/42ZBdFHpgtRWmu1FYoX94iLS97TtB23eTKBk=;
        b=FAMIT85hCvZs5DofVGt1nQZTFXtZ5tR+Mnsg5nC0qdPAvAA74fEOASAkk3zr7hjIMp
         K8dtocB8XQr818h+1dG92iE8hf9YRonlK44mBrkwUKZulJI/3BbzncXMLQYuxAYeY+hi
         C2w2GhBRJGiCB8fjCMcjdp/2cffpT660ne1YUS19EdDVVjfbPh5xeUSGTl46ADOWnjVK
         sRxksCx2aixKDRPIOVSP2u4j6Kv+wyLW37k3nbo1sEhTubo4PFIFI0W7IH+vixx2SMZs
         KYPV/t/tVsHVls1i0qElW5lNRholvn5eF3F/dTtJjS0MZjghbG6ARTNcn9ggIWcSgf5v
         WSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0tq0t0/42ZBdFHpgtRWmu1FYoX94iLS97TtB23eTKBk=;
        b=G35egYzkbHQbjxWxrfbtl5rLMTsb9cc5LDj2eeuP19nM6e/9kYE7dF1lbRYDvo1HOl
         Fl5J0WoWjRcIHQ+kdKxj+rFRrzxjVDzgco9Aa/+G3wAU6q+gWkrb+4nEh2Fxs7a8ENnY
         QSbcAj+VeVT17suBZjqnQPlVwR3Sv1uVTF7/WLxw+VnyxHra1g0wYdV7yWrBQIXpB5Um
         J0kNIViM7XyyweYWxPhjQooKeEzK67cdKzd2sxU/RDyXXSzGdzWLRNePNY+nq7EtkShI
         Cfc1JL5YpBIWtwM/BIA7cprNWSGJIsicZe4kbRYvknhgUfpQudRd85C4BNRnbIDQExz/
         306Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532tmwD+nJ/UZ59twFSP6rbs5r63LRmIUNlgRZKOMTvYVghU9MGH
	yfWt3L8XAX6j0ZAzrJqBMVE=
X-Google-Smtp-Source: ABdhPJzQ2KoZOq4r62N5Ezv7VIiUtnB8kPbvtfWVIB8j6WfNevzWckQ4AaDWK91S7Be6nr9SeB57lQ==
X-Received: by 2002:aca:3956:: with SMTP id g83mr12561490oia.123.1596839296935;
        Fri, 07 Aug 2020 15:28:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:644a:: with SMTP id m10ls2504516otl.7.gmail; Fri, 07 Aug
 2020 15:28:16 -0700 (PDT)
X-Received: by 2002:a05:6830:1e91:: with SMTP id n17mr13840840otr.172.1596839296536;
        Fri, 07 Aug 2020 15:28:16 -0700 (PDT)
Date: Fri, 7 Aug 2020 15:28:15 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a817d6f9-f73f-4bc3-8a1d-87ca41995eebo@googlegroups.com>
In-Reply-To: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
References: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
Subject: Re: Todo list for open-iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_477_729336739.1596839295858"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_477_729336739.1596839295858
Content-Type: multipart/alternative; 
	boundary="----=_Part_478_405046401.1596839295859"

------=_Part_478_405046401.1596839295859
Content-Type: text/plain; charset="UTF-8"

On Thursday, July 30, 2020 at 9:58:41 PM UTC-7, sonu kumar wrote:
>
> Hi All, 
>
> I looked into the TODO list of open-iscsi. It is quite old and written 
> on July 7th,2011. Do we have any updated version of it? 
>
> I am looking for some low hanging tasks to getting started with 
> open-iscsi and iscsi. It would be really helpful if somebody helps me 
> to figure it out. 
>
> Thanks 
>

You don't need to "fix" something to learn about the code.Try tracing an 
iscsi login request all the way from the command line to the target. What 
happens. How do the "/dev/sd*" discs show up? What does iscsiadm do? What 
does iscsid do? What does the kernel do? What does the target do? What do 
the commands look like on the wire?

There are a lot of things to improve. The node database is a joke, in that 
it's not a database, it's a bunch of files and directories, and it has no 
locking and can't handle thousands of targets.

Many of the problems left in open-iscsi are non-trivial, or they would have 
been fixed.

Another area you can consider is further migration of duplicated 
functionality out of iscsid/iscsiadm and into libopeniscsi. And then 
there's adding better error handling, since open-iscsi just punts in such 
cases and disconnects/reconnects.

What about adding in multi-queue to the kernel code, or better network 
connections with the kernel. Support for network namespaces? What about 
zeroconf for initiator/target discovery? Also, open-iscsi has very little 
security -- even if you require a login/password to connect, the IO is sent 
over the network in the clear. Is there a solution for that?

As I said, many of these problems are non-trivial. But just learning the 
code can be done without tackling these larger issues I believe. Those on 
this list (including me) would be glad to help you. You will tend to get 
more intelligent answers if you ask intelligent questions.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a817d6f9-f73f-4bc3-8a1d-87ca41995eebo%40googlegroups.com.

------=_Part_478_405046401.1596839295859
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thursday, July 30, 2020 at 9:58:41 PM UTC-7, sonu kumar=
 wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.=
8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Hi All,
<br>
<br>I looked into the TODO list of open-iscsi. It is quite old and written
<br>on July 7th,2011. Do we have any updated version of it?
<br>
<br>I am looking for some low hanging tasks to getting started with
<br>open-iscsi and iscsi. It would be really helpful if somebody helps me
<br>to figure it out.
<br>
<br>Thanks
<br></blockquote><div><br></div><div>You don&#39;t need to &quot;fix&quot; =
something to learn about the code.Try tracing an iscsi login request all th=
e way from the command line to the target. What happens. How do the &quot;/=
dev/sd*&quot; discs show up? What does iscsiadm do? What does iscsid do? Wh=
at does the kernel do? What does the target do? What do the commands look l=
ike on the wire?</div><div><br></div><div>There are a lot of things to impr=
ove. The node database is a joke, in that it&#39;s not a database, it&#39;s=
 a bunch of files and directories, and it has no locking and can&#39;t hand=
le thousands of targets.</div><div><br></div><div>Many of the problems left=
 in open-iscsi are non-trivial, or they would have been fixed.</div><div><b=
r></div><div>Another area you can consider is further migration of duplicat=
ed functionality out of iscsid/iscsiadm and into libopeniscsi. And then the=
re&#39;s adding better error handling, since open-iscsi just punts in such =
cases and disconnects/reconnects.</div><div><br></div><div>What about addin=
g in multi-queue to the kernel code, or better network connections with the=
 kernel. Support for network namespaces? What about zeroconf for initiator/=
target discovery? Also, open-iscsi has very little security -- even if you =
require a login/password to connect, the IO is sent over the network in the=
 clear. Is there a solution for that?</div><div><br></div><div>As I said, m=
any of these problems are non-trivial. But just learning the code can be do=
ne without tackling these larger issues I believe. Those on this list (incl=
uding me) would be glad to help you. You will tend to get more intelligent =
answers if you ask intelligent questions.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a817d6f9-f73f-4bc3-8a1d-87ca41995eebo%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/a817d6f9-f73f-4bc3-8a1d-87ca41995eebo%40googlegroups.com</a>.=
<br />

------=_Part_478_405046401.1596839295859--

------=_Part_477_729336739.1596839295858--
