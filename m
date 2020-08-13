Return-Path: <open-iscsi+bncBCKJX47LTIJRB5452X4QKGQEZ3NBRVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8AF243B96
	for <lists+open-iscsi@lfdr.de>; Thu, 13 Aug 2020 16:32:24 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id j11sf5044795pje.0
        for <lists+open-iscsi@lfdr.de>; Thu, 13 Aug 2020 07:32:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597329143; cv=pass;
        d=google.com; s=arc-20160816;
        b=trOk4pAec9WYaP7aGqqJDFrVWsuLVlLlryhUMlMLS0L4QE8qI5B3opCFcyOEI0jzod
         X70+rGGP4CXmL8GmRYg7dNoJL+PpXPkB4l5tqwkOLc4pW3zr0qrerH3mLWSpkrfZ5MC5
         64lhg2f2JOY9bDSg/mYkpRc2i/fyvdaRToZYYRNOp1aPFbiZdd54ziZBEbipMc7pZnx1
         vqQExJOYu9ZzuRwxfnUwSYtRrQ8ZlxAjBz04BkbCY6Qhf5qfaiYcK1LrqT6MIrVLbBV0
         FEaQTtSrJ8BS1vznh6gAKYJySzkhKXprYy5/rymQ61CNq40DN3RmbGX0hob/nXpCDMjb
         xNew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=pSEYlKOEMx1rrW8R846AC5giQM4I87NLuho0xdlm56o=;
        b=uO98W8+bOFaTQ+ShuKltFBtYk5baKfAZKR8n2t5+4gl98zeTh+t5di3RkJqptimjiv
         bw9cIxb0t5pM4fRiPwbEVeK3V1xDFs//GJ7fW3afHP5C85xD/79qvIhbVcqKWk01IDaL
         cB3ZKYu/9e0g+g3B3NJ9ypF3jHQsky+km4O1ImLDmKiesG/ry3hUUPE6Wa0JIlqyYtl7
         oR/RwBJsGPwFAuET776jTq2ukJnQPzbFSrGw23izu2xwfKMREDeLRYOHWPro4HcHGQCg
         xKkZzJefBzck2flGTuODt2sONT+cGpXAbB9cdf0N19r2SjmQqzZlunsHMaPDgKNjt1g/
         9ajw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/aFMpXa";
       spf=pass (google.com: domain of nirsof@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=nirsof@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pSEYlKOEMx1rrW8R846AC5giQM4I87NLuho0xdlm56o=;
        b=AVZQzPWNkes/qqldzLmP5ak95Z8jGmUXTaCo9J+kth9NfeM5TfbtRR0dHfrbVbg9Ig
         bjjAfqxUSloXOBZNl21odhl6m87aBv0p5/Pa2jC216zQt9VJZxSwend5YOgQB+gi6XXB
         wrokUbIYncYHrA0qVqwk5yaXZV4CBsqSKpKe6yoXwWPOgwhq5n4BkrQYcnUjpgjF1EPn
         9Zgo+gGGbC4ng0GVHgkftdm4LJAMY/VJ5tuiP6OyZK39fUBfeUlU8yxfy1+t3fYh+qqC
         Figjqt4eCRtiGIbHKuD7XgOTsEgRojRqb0bY1TqkCqQCYi+PBa8AXevbbP0bEYWZEpT4
         6YIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pSEYlKOEMx1rrW8R846AC5giQM4I87NLuho0xdlm56o=;
        b=enDe/m05ufLOjgmMcSb4kIFRlseF34AN40hydsuzJemdb5UrlgoA4jsDBaY65ADu1e
         a393UHwPbtElqHIJ8pNhglqyaC1YENTZqxCM08Py6GAj1u46q5vrrjGlT9FU+Iiig3wN
         cx6RSISqw5r7grBv2kuVVwUSabJ/y6dB+2h9mLwINm6JKxUXk2+auKlxlfu0tWcTZhU4
         sAATk5iG1KwUTyrQFLGeDMikIg4CgTSKzswD3Mq8/RuEcO8A7Js99lgQUdNsC5YTb5NE
         IgIES2YCalhro9n41JUiO2Uc9i9x+Q1TcCaxaBxpAqGHSo/DjD2gJiDG1TnWC1jyq3Ij
         gi6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pSEYlKOEMx1rrW8R846AC5giQM4I87NLuho0xdlm56o=;
        b=aIMitjN5SHFyv8d8rpKLksO2OSlnDVgaO79Nxb1fnAD4qf207e1Hc0OzH4WTWvNYIX
         CzwZOybjcQ8TEDOF0w4wEdEDuVXVhe7wDbE0Es6H3rsWMSgwNrgwKR0CKq6kSsvv7pfy
         zseb5bMBWNRE5NhjA5KFJP9awpRjrsU46yXIjTExW7t9IEz4n+Fdv/RASysSCSvpFenG
         VDC3Fz734ejc2Jd+b9JHBH2+d3Prmt7XjmKEu+mGjvVFY+SMFFY9frw03L+35Pvrvcsi
         rUtxL4lJ7lTo9+87ukrrmuT12W9IvscaKJu0hEuAAt2lKXPqH0hUJckSPx6cKp/N6oY5
         TNIw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533f0sjuW1wzs25JDsIovwTa/nacKTxExw6X3LQvZEnTbFFHpZG6
	kAqU4cyH1A6wv+p38WEtY4Y=
X-Google-Smtp-Source: ABdhPJzmlSrlNLO+T/qXk1Jja9mpHUglZjZAah6fwmEnb+4uDLYbOHgldDR8tn5lVd0wG/0tw5lirQ==
X-Received: by 2002:a17:90a:d482:: with SMTP id s2mr5387119pju.140.1597329143301;
        Thu, 13 Aug 2020 07:32:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:525b:: with SMTP id s27ls1662249pgl.11.gmail; Thu, 13
 Aug 2020 07:32:22 -0700 (PDT)
X-Received: by 2002:a05:6a00:847:: with SMTP id q7mr4584104pfk.172.1597329142707;
        Thu, 13 Aug 2020 07:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597329142; cv=none;
        d=google.com; s=arc-20160816;
        b=TGcacfFttaxy2OEQVO+8VR3ifSoBkqQRqzG0bjUwOJQOYBgVu3jG6AT2fJnAlAcHoi
         8eQT17kiiomP99574KH0VKndLOFbmrTgx+2vomUwIOerZmwgg5BiKetVuGiAVOt9eLcb
         QqyiZ+X+FK7VzI+fLMAtUeIs8v7ForwiII82N3oG7Nk1/sNwdxAc69WqGxL1SDoGa08Z
         19k9u5AJwWorLBE16M5iqqOVho3HB0O67SzgYVE3uxyfaBHgfsoSnIuacD3rQaRV7O6a
         Umbfd1iBpZJ5spTRdAIb9US1Y1wN9ZWGimF73+1TWsjcWVjxI3gAsdHzQfVbqiIBFQ7G
         CyEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Kv+f/ppE2Iuj9AgqkOIOPferwoZ/ZFZw2RZt7Rzjv30=;
        b=so3Pn0/aawgJMwEAb0w5fDXVLSCYmNq78qXUBhipEylmE1fqc/nbRGtL33fp5sAowc
         DK8BLq2tvmrAS/kaxOeyuG0lWIpKPzgspIbU+cyRRTgr7rRBcgEkkYrW0R3q6iDEA6k6
         GnfrttUK+hwM0G/7Q7pENUOx2NP1A9Wt3zKXB2g7AL901X4Uth5mEO3beyeUIAVZrb8u
         9rHhcB3xq14KGRNDJzwDM9KZsECkeSvXEEaatQs+kfDYe62t0fbqoKy4TVk0ya8QbQmD
         sFem1AlzUiNqbO4iyCXULftbEpFiW66jmkCrDHYZ/PEnB+BRkbJjex+M18KNYytoS2VF
         wb8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/aFMpXa";
       spf=pass (google.com: domain of nirsof@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=nirsof@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id bk18si336807pjb.3.2020.08.13.07.32.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 07:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nirsof@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id n25so3004333vsq.6
        for <open-iscsi@googlegroups.com>; Thu, 13 Aug 2020 07:32:22 -0700 (PDT)
X-Received: by 2002:a05:6102:72b:: with SMTP id u11mr3546254vsg.146.1597329140067;
 Thu, 13 Aug 2020 07:32:20 -0700 (PDT)
MIME-Version: 1.0
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com> <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com> <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
 <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
In-Reply-To: <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
From: Nir Soffer <nirsof@gmail.com>
Date: Thu, 13 Aug 2020 17:32:03 +0300
Message-ID: <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000fbb22605acc32b02"
X-Original-Sender: nirsof@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="b/aFMpXa";       spf=pass
 (google.com: domain of nirsof@gmail.com designates 2607:f8b0:4864:20::e41 as
 permitted sender) smtp.mailfrom=nirsof@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000fbb22605acc32b02
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 13, 2020 at 1:32 AM The Lee-Man <leeman.duncan@gmail.com> wrote:

> On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:
>>
>> ...
>>
>>>
>>>> The other option is to use one login-all call without parallelism, but
>>>> that would have other implications on our system to consider.
>>>>
>>>
>>> Such as?
>>>
>> As mentioned above,  unless there is a way to specify a list of targets
>> and portals for a single login (all) command.
>>
>>>
>>>> Your answers would be helpful once again.
>>>>
>>>> Thanks,
>>>> - Amit
>>>>
>>>>
>>> You might be interested in a new feature I'm considering adding to
>>> iscsiadm to do asynchronous logins. In other words, the iscsiadm could,
>>> when asked to login to one or more targets, would send the login request to
>>> the targets, then return success immediately. It is then up to the end-user
>>> (you in this case) to poll for when the target actually shows up.
>>>
>> This sounds very interesting, but probably will be available to us only
>> on later RHEL releases, if chosen to be delivered downstream.
>> At present it seems we can only use the login-all way or logins in a
>> dedicated threads per target-portal.
>>
>>>
>>> ...
>>>
>>
> So you can only use RH-released packages?
>

Yes, we support RHEL and CentOS now.


> That's fine with me, but I'm asking you to test a new feature and see if
> it fixes your problems. If it helped, I would add up here in this repo, and
> redhat would get it by default when they updated, which they do regularly,
> as does my company (SUSE).
>

Sure, this is how we do things. But using async login is something we can
use only
in a future version, maybe RHEL/CentOS 8.4, since it is probably too late
for 8.3.

Just as a "side" point, I wouldn't attack your problem by manually listing
> nodes to login to.
>
> It does seem as if you assume you are the only iscsi user on the system.
> In that case, you have complete control of the node database. Assuming your
> targets do not change, you can set up your node database once and never
> have to discover iscsi targets again. Of course if targets change, you can
> update your node database, but only as needed, i.e. full discovery
> shouldn't be needed each time you start up, unless targets are really
> changing all the time in your environment.
>

This is partly true. in oVirt, there is the vdsm daemon managing iSCSI
connections.
so usually only vdsm manipulates the database.

However even in vdsm we have an issue when we attach a Cinder based volume.
In this case we use os-brick (https://github.com/openstack/os-brick) to
attach the
volume, and it will discover and login to the volume.

And of course we cannot prevent an admin from changing the database for
their
valid reasons.

So being able to login/logout to specific nodes is very attractive for us.

If you do discovery and have nodes in your node database you don't like,
> just remove them.
>

We can do this, adding and removing nodes we added, but we cannot remove
nodes
we did not add. If may be something added by os-brik or an administrator.

Another point about your scheme: you are setting each node's 'startup' to
> 'manual', but manual is the default, and since you seem to own the
> open-iscsi code on this system, you can ensure the default is manual.
> Perhaps because this is a test?
>

No, this is our production setup. I don't know why we specify manual, maybe
this was not the default in 2009 when this code was written, or maybe the
intent
was to be explicit about it, in case the default would change?

Do you see a problem with explicit node.startup=manual?


>
> So, again, I ask you if you will test the async login code? It's really
> not much extra work -- just a "git clone" and a "make install" (mostly). If
> not, the async feature may make it into iscsiadm any way, some time soon,
> but I'd really prefer other testers for this feature before that.
>

Sure, we will test this.

Having async login API sounds great, but my concern is how do we wait for
the
login result. For example with systemd many things became asynchronous, but
there is no good way to wait for things. Few examples are mounts that can
fail
after the mount command completes, because after the completion udev changes
permissions on the mount, or multipath devices, which may not be ready after
connecting to a target.

Can you elaborate on how you would wait for the login result, and how would
you
get login error for reporting up the stack? How can you handle timeouts?
This is
easy to do when using synchronous API with threads.

From our point of view we want to be able to:

    start async login process
    for result in login results:
        add result to response
    return response with connection details

This runs on every host in a cluster, and the results are returned to oVirt
engine,
managing the cluster.

Cheers,
Nir

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw%40mail.gmail.com.

--000000000000fbb22605acc32b02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 13, 2020 at 1:32 AM The Lee-M=
an &lt;<a href=3D"mailto:leeman.duncan@gmail.com">leeman.duncan@gmail.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">On Sunday, August 9, 2020 at 11:0=
8:50 AM UTC-7, Amit Bawer wrote:<blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">...<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div><br></div><div>The other option is to use one login-all call w=
ithout parallelism, but that would have other implications on our system to=
 consider.<br></div></blockquote><div><br></div></div><div dir=3D"ltr"><div=
>Such as? <br></div></div></blockquote><div>As mentioned above,=C2=A0 unles=
s there is a way to specify a list of targets and portals for a single logi=
n (all) command.<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div></div></div><div dir=3D"ltr"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div><br>Your answers would be helpful once agai=
n.</div><div><br>Thanks,<br>- Amit</div><br></blockquote><div><br></div></d=
iv><div dir=3D"ltr"><div>You might be interested in a new feature I&#39;m c=
onsidering adding to iscsiadm to do asynchronous logins. In other words, th=
e iscsiadm could, when asked to login to one or more targets, would send th=
e login request to the targets, then return success immediately. It is then=
 up to the end-user (you in this case) to poll for when the target actually=
 shows up.</div></div></blockquote><div>This sounds very interesting, but p=
robably will be available to us only on later RHEL releases, if chosen to b=
e delivered downstream.</div><div>At present it seems we can only use the l=
ogin-all way or logins in a dedicated threads per target-portal.<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br>=
</div>...</div></blockquote></div></blockquote><div><br></div><div>So you c=
an only use RH-released packages?</div></div></blockquote><div><br></div><d=
iv>Yes, we support RHEL and CentOS now.</div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>That&#39;s fine =
with me, but I&#39;m asking you to test a new feature and see if it fixes y=
our problems. If it helped, I would add up here in this repo, and redhat wo=
uld get it by default when they updated, which they do regularly, as does m=
y company (SUSE).</div></div></blockquote><div><br></div><div>Sure, this is=
 how we do things. But using async login is something we can use only</div>=
<div>in a future version, maybe RHEL/CentOS 8.4, since it is probably too l=
ate for 8.3.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>Just as a &quot;side&quot; point, I wouldn&#3=
9;t attack your problem by manually listing nodes to login to.</div><div><b=
r></div><div>It does seem as if you assume you are the only iscsi user on t=
he system. In that case, you have complete control of the node database. As=
suming your targets do not change, you can set up your node database once a=
nd never have to discover iscsi targets again. Of course if targets change,=
 you can update your node database, but only as needed, i.e. full discovery=
 shouldn&#39;t be needed each time you start up, unless targets are really =
changing all the time in your environment.</div></div></blockquote><div><br=
></div><div>This is partly true. in oVirt, there is the vdsm daemon managin=
g iSCSI connections.</div><div>so usually only vdsm manipulates the databas=
e.</div><div><br></div><div>However even in vdsm we have an issue when we a=
ttach a Cinder based volume.</div><div>In this case we use os-brick (<a hre=
f=3D"https://github.com/openstack/os-brick">https://github.com/openstack/os=
-brick</a>) to attach the</div><div>volume, and it will discover and login =
to the volume.</div><div><br></div><div>And of course we cannot prevent an =
admin from changing the database for their</div><div>valid reasons.</div><d=
iv><br></div><div>So being able to login/logout to specific nodes is very a=
ttractive for us.=C2=A0</div><div><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div>If you do discovery and have nodes=
 in your node database you don&#39;t like, just remove them.</div></div></b=
lockquote><div><br></div><div>We can do this, adding and removing nodes we =
added, but we cannot remove nodes</div><div>we did not add. If may be somet=
hing added by os-brik or an administrator.</div><div><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Another point a=
bout your scheme: you are setting each node&#39;s &#39;startup&#39; to &#39=
;manual&#39;, but manual is the default, and since you seem to own the open=
-iscsi code on this system, you can ensure the default is manual. Perhaps b=
ecause this is a test?</div></div></blockquote><div><br></div><div>No, this=
 is our production setup. I don&#39;t know why we specify manual, maybe</di=
v><div>this was not the default in 2009 when this code was written, or mayb=
e the intent</div><div>was to be explicit about it, in case the default wou=
ld change?</div><div><br></div><div>Do you see a problem with explicit node=
.startup=3Dmanual?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div><br></div><div>So, again, I ask you i=
f you will test the async login code? It&#39;s really not much extra work -=
- just a &quot;git clone&quot; and a &quot;make install&quot; (mostly). If =
not, the async feature may make it into iscsiadm any way, some time soon, b=
ut I&#39;d really prefer other testers for this feature before that.<br></d=
iv></div></blockquote><div><br></div><div>Sure, we will test this.</div><di=
v><br></div><div>Having async login API sounds great, but my concern is how=
 do we wait for the=C2=A0</div><div>login result. For example with systemd =
many things became asynchronous, but</div><div>there is no good way to wait=
 for things. Few examples are mounts that can fail</div><div>after the moun=
t command completes, because after the completion udev changes</div><div>pe=
rmissions on the mount, or multipath devices, which may not be ready after<=
/div><div>connecting to a target.</div><div><br></div><div>Can you elaborat=
e on how you would wait for the login result, and how would you</div><div>g=
et login error for reporting up the stack? How can you handle timeouts? Thi=
s is=C2=A0</div><div>easy to do when using synchronous API with threads.</d=
iv><div><br></div><div>From our point of view we want to be able to:</div><=
div><br></div><div>=C2=A0 =C2=A0 start async login process</div><div>=C2=A0=
 =C2=A0 for result in login results:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
add result to response</div><div>=C2=A0 =C2=A0 return response with connect=
ion details</div><div><br></div><div>This runs on every host in a cluster, =
and the results are returned to oVirt engine,</div><div>managing the cluste=
r.</div><div><br></div><div>Cheers,</div><div>Nir</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9=
Qw%40mail.gmail.com</a>.<br />

--000000000000fbb22605acc32b02--
