Return-Path: <open-iscsi+bncBC22XCF67ADRBOGZU75QKGQEC7XJZRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AC42741FE
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Sep 2020 14:23:22 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id q5sf11053382pfl.16
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Sep 2020 05:23:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600777401; cv=pass;
        d=google.com; s=arc-20160816;
        b=B2NmQ2SuneM1lXKwlr7wNMQ/6ff+bxTSxwbgi7dqRMO2f4FoFfbD18PBtcdWFiOe2B
         fp/1UZrtx4GG1Q96r85afBzhznaWlnXgUTJNyVPQ8Qd2r8f40t02UToInnZ6NvA3u3hm
         x+rMUDVb3bdAImRrmpodSOqaozixjuJNddXs5nSGqtVuBjfnmutJNz9hPMkrC8HaxXSP
         uk+WQpnHMXGOHY+6AG4UFMnJJLyqc/S1XWWWJCX7+TWaCCsurMeGUGffyKNWLvyrM7p3
         Ko9UvUTFxHXr4ajR6cUMGxfOz+JPRSUvqTGjCpxB1jsYz4t2dZjYveDNlHLLB4wQhZSn
         QbSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :in-reply-to:mime-version:references:message-id:subject:to:from:date
         :sender:dkim-signature;
        bh=N3pOZZliLhgrTBjUuamVpgZ+AAb40mpkNwH0H/uOjA8=;
        b=TIjsbhZp9nzeef08eYZ9iFcmn79E2WxMjxmqItOSfS2PVjWHrWDbcFad2xW3N0sU3V
         RGDL2wZZG2Ee0e+muBPtf6ejcn5gskijVzfYwiodc9Ob0mkPtzRe3bR2KpsigxDSPWFH
         85RWlslsNE2T+kT7Jpxru6bZaPXzCBS3vV2mJjg/2FExpaP0zRSrL/49hNevSmpG17Wo
         OKfFIIfqbMgI4iu1qr2EBvQ4WiGbeFpOH9izIxU+Ky25aiet66E7XqC6oAobCLgdEkUI
         dB9B4PK8elHxd1/dtFcK8CN2QdEVqq/hlYqF7GpMOXnnA+s4ZrvjR1Tr92g0oB7PEJgS
         FqiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PomQxms1;
       spf=pass (google.com: domain of geguileo@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=N3pOZZliLhgrTBjUuamVpgZ+AAb40mpkNwH0H/uOjA8=;
        b=OD7lfZZHj5FWdQS+gq0Zh6DVgOoVPBIZ42sd7ERfKpTfi5yyt67uK1RkGhgLgAc63d
         Zb6VV0ku/Hk1FqaMeIvZXYFpf4/Wdgvnndi10k5RmWOg+gR2yVGhx48MsFpTCDCE9F2I
         eLOPkb/w2acHk0RLQwCjZkBJEgZe9SMge/+1XV+JAZh+hJ0uoThMYj0+IQfx+/z7G4Sp
         lClxn6COE1QLkvxxgZQeQqRm24Srz6/zLh+7wqhBno6sZvE0lCI8xGN3QVDBBkaO22A1
         Mw8obmaYTPjPtQieBQRcPuXRbpMiIYqqb1h9/S9IMrgUJc/sgUGxtsIe2fcXpXsrS7rB
         hRdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N3pOZZliLhgrTBjUuamVpgZ+AAb40mpkNwH0H/uOjA8=;
        b=Liq/H7rv7KGb7Tz7/343lulwTwOxUMBJZIJgClY4NUd20tHqw6OAQS58lxPoGwv92H
         xH7xTPsIoPUu0I9lwPl/iOoS8b9iBXXe9EADZk7aNQyFGWaqSH4pXyC8ljtqoupSQyeA
         ptPmW3xZI7R60l4J7rJsDd/+RiDG8vKwMB8PCIwXGYvSPoVEcxnoC4vs3/DQLVx62lLW
         osJqFu5esNoRtKjVfq4nXzGDla8ePaJR6G0z56H9IvdZI+oz9iDxkr5A/wN9XGXlQBBR
         dLLhjQqZOzQBegp4tUgQROBwX9N8ZFKCJfY/TYdA6p3z3e67ujgYrvc4BdrRP/dtLrMP
         8tbg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530uGlvxNDVn4anmkR8o2xahsF/UrWW0INbV4qATNyjfZ7Yyp+TP
	ggS0e8TUgYbLrvot94xxoJk=
X-Google-Smtp-Source: ABdhPJzpRVGBdpB/cusi+SlCIDf0XCmG9SYX0agFhaTbSnhxoFL1hjUlN3UHs8ockIoCWVwKM/ZqJA==
X-Received: by 2002:a17:90a:b702:: with SMTP id l2mr3662434pjr.82.1600777400938;
        Tue, 22 Sep 2020 05:23:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls5714469pfc.3.gmail; Tue, 22
 Sep 2020 05:23:20 -0700 (PDT)
X-Received: by 2002:aa7:8583:0:b029:13f:7096:5eb with SMTP id w3-20020aa785830000b029013f709605ebmr4029714pfn.0.1600777400290;
        Tue, 22 Sep 2020 05:23:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600777400; cv=none;
        d=google.com; s=arc-20160816;
        b=atvD1IpNembrtMSKB0EZ1rmBa1T5oFk974u0fxa/r4Gt5t0eYn3ehaqFMV1Diiik9l
         kM9tTf0F7npXkFKxzvX1HJQ5mvbnwmRaXqFyOTOxgzN8f2fo8EYOYhG/2TvQssfGu0/c
         OxjqDn/fic0ZuUA4axVq+oWmqwNpkMNyuy1FPIN2u9sO04jYox7smNePPrtFc14gcAR7
         w8/+Yajp14AmWt9JEfz9fB2t95uWdOgPX93zS5fS0eKKRwg/6WunQsncfWARm728cELv
         mrsR3rb04qs6LdHrN4XB2LOQA/GXJmw874uBaA/cQySK7YEf0i5T8UWlI5QqLHsdtlKN
         BAiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=JAiO43k4BhLg9TxVAgEYoYKr+Pt6+BFXMCyTArhp2oA=;
        b=pQs2GYO/CSkh/SMOHHe5l1iIrm8W8s743uDLjVMyF3EOj7tbN1DRKql3sCA4qU7nuy
         VkYKYU9SPxnq59gaT7SJE65viRjlW6wOLwd+pUix+FaMJ3TPEuvCk7RaDVbhrSJ0/GU8
         8EQ3axxEqL6UvbvN837KuJdDFL9zBbHLDmpFW2J+fp0+fpdOJuO6lrqTKutDfrsLzcuk
         guVaMdtjGqTsjykiDTb6TwEm/63KgXHZAMiLc/Ie+gWaW6ld3wTjtgNLVyF1RhbXqMVw
         VeM9WzS2DXwpyHNI+rMTWre6RyAgEyp68hTYcRDusOFepMpIZ3rkUH7xkmUGEhZM3Zoj
         68Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PomQxms1;
       spf=pass (google.com: domain of geguileo@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id c4si348882plz.2.2020.09.22.05.23.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Sep 2020 05:23:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of geguileo@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-4J9AuJgXPq2KF4QsH_-qoA-1; Tue, 22 Sep 2020 08:23:16 -0400
X-MC-Unique: 4J9AuJgXPq2KF4QsH_-qoA-1
Received: by mail-wm1-f72.google.com with SMTP id m125so840504wmm.7
        for <open-iscsi@googlegroups.com>; Tue, 22 Sep 2020 05:23:16 -0700 (PDT)
X-Received: by 2002:adf:b74b:: with SMTP id n11mr5041525wre.274.1600777394662;
        Tue, 22 Sep 2020 05:23:14 -0700 (PDT)
X-Received: by 2002:adf:b74b:: with SMTP id n11mr5041491wre.274.1600777394196;
        Tue, 22 Sep 2020 05:23:14 -0700 (PDT)
Received: from localhost (81.172.116.119.dyn.user.ono.com. [81.172.116.119])
        by smtp.gmail.com with ESMTPSA id d2sm26213225wro.34.2020.09.22.05.23.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 05:23:10 -0700 (PDT)
Date: Tue, 22 Sep 2020 14:23:09 +0200
From: Gorka Eguileor <geguileo@redhat.com>
To: open-iscsi@googlegroups.com
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
Message-ID: <20200922122309.32vierh3ulnlxxum@localhost>
References: <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
 <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
 <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
 <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
 <1f197a6d-cf7c-4723-a3f1-1d98b3d98520n@googlegroups.com>
 <ade44206-3ba3-4e03-89fb-20deefa3c0dfn@googlegroups.com>
 <d02edd0c-7a27-426c-9ead-be3a3a646e2dn@googlegroups.com>
MIME-Version: 1.0
In-Reply-To: <d02edd0c-7a27-426c-9ead-be3a3a646e2dn@googlegroups.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: geguileo@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PomQxms1;
       spf=pass (google.com: domain of geguileo@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 21/09, Amit Bawer wrote:
>
>
> On Tuesday, September 15, 2020 at 11:21:37 PM UTC+3 The Lee-Man wrote:
>
> > I believe the best way to check for the async session to complete is to
> > look for results. Does a new disc show up? That sort of high-level
> > algorithm will be the best, because it waits for what you actually care
> > about.
> >

Hi,

In the case of os-brick (OpenStack) that would never happen on its own,
because we disable all automatic scans (setting node.session.scan to
manual) on the connections to prevent race conditions between detaching
on the host and mapping a new volume that leads to the removed volume
being discovered again.

So we would need polling to check that the login operation has completed
(with or without success).

Cheers,
Gorka.


> > If you'd like to wait until iscsiadm says the session is complete, that
> > seems like it'd be possible to, but be advised there is a finite amount of
> > time between when (1) the session connects, (2) iscsiadm will show the
> > session as valid, and (3) when udev and friends in the operating system
> > instantiate the disc.
> >
>
> I think it could be helpful, because it would avoid the sampling loop
> having to check for the the established sessions and it could also provide
> the error information in case the attempt has failed (such as login
> timeout).
>
>
> > By the way, how are you simulating one target is down? Just curious.
> >
>
> Maybe its oversimplified, but when listing portal address as down for the
> test script, it would replace it with a non-responsive address
> "0.0.0.0:0,0" in the resulting discovery list
> so any login attempt to it would be timed out.
>
>
> > Lastly, yes, I could add code to iscsiadm to make "iscsiadm -m node -T
> > <iqn> ... --login --no_wait" work. Would you be willing to test it (in a
> > branch) if I did?
> >
>
> Yes, I could modify the test used so far to check this mod as well.
>
> Thanks.
>
> >
> > On Tuesday, August 18, 2020 at 6:23:45 AM UTC-7 aba...@redhat.com wrote:
> >
> >> Hi Lee,
> >>
> >> Thanks for adding the async login support to upstream. I've ran some
> >> tests using the iscsiadm built from there
> >> and would like to ask:
> >>
> >> 1. How is it possible to gather the async logins return status? if
> >> understood correctly, the proposed way
> >> is to lookup for the connections in the output of "iscsiadm -m session"
> >> after the async logins were launched.
> >> Currently, I am using a sampling loop, checking at 1 second intervals the
> >> output of iscsiadm -m session for
> >> presence of expected connections targets and portals and breaks if all
> >> were found or not found within
> >> the expected timeout interval, which for the default iscsi settings is
> >> considered as following:
> >> (120 seconds timeout per connection login) * (number of connections) /
> >> (number of workers)
> >> Is there a better way? I am not sure how to gather the error status when
> >> a connection not able to login in such case.
> >>
> >> 2. Would it also be supported for non-login-all mode? For "iscsiadm -m
> >> node -T target -p portal -I interface --login"
> >> I get same timeouts with/without the --no-wait flag, meaning the test
> >> waits 240 seconds in case two connections
> >> are down when using a single node login worker for both cases, so I
> >> assume it currently doesn't apply for this login mode.
> >>
> >> -- Simulating one portal down (2 connections down) with one worker, using
> >> node login without --no-wait
> >>
> >> # python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d
> >> 10.35.18.156
> >>
> >> 2020-08-18 15:59:01,874 INFO    (MainThread) Removing prior sessions and
> >> nodes
> >> 2020-08-18 15:59:01,882 INFO    (MainThread) Deleting all nodes
> >> 2020-08-18 15:59:01,893 INFO    (MainThread) No active sessions
> >> 2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as
> >> invalid address for target iqn.2003-01.org.vm-18-220.iqn2
> >> 2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as
> >> invalid address for target iqn.2003-01.org.vm-18-220.iqn1
> >> 2020-08-18 15:59:01,943 INFO    (MainThread) Discovered connections:
> >> {('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'),
> >> ('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0'),
> >> ('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'),
> >> ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1')}
> >> 2020-08-18 15:59:01,944 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
> >> 2020-08-18 15:59:01,956 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
> >> 2020-08-18 15:59:01,968 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
> >> 2020-08-18 15:59:01,980 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
> >> 2020-08-18 15:59:01,995 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=False)
> >> 2020-08-18 16:01:02,019 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=False)
> >> 2020-08-18 16:01:02,028 ERROR   (MainThread) Job failed: Command
> >> ['iscsiadm', '--mode', 'node', '--targetname',
> >> 'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '
> >> 0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default,
> >> target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0]' err='iscsiadm:
> >> Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1,
> >> portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection
> >> timed out)\niscsiadm: Could not log into all portals'
> >> 2020-08-18 16:03:02,045 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=False)
> >> 2020-08-18 16:03:02,053 ERROR   (MainThread) Job failed: Command
> >> ['iscsiadm', '--mode', 'node', '--targetname',
> >> 'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '
> >> 0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default,
> >> target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0]' err='iscsiadm:
> >> Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2,
> >> portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection
> >> timed out)\niscsiadm: Could not log into all portals'
> >> 2020-08-18 16:03:02,321 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=False)
> >> 2020-08-18 16:03:02,695 INFO    (MainThread) Connecting completed in
> >> 240.752s
> >>
> >> -- Simulating one portal down (2 connections down) with one worker, using
> >> node login with --no-wait
> >>
> >> # python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d
> >> 10.35.18.156  --nowait
> >>
> >> 2020-08-18 16:16:05,802 INFO    (MainThread) Removing prior sessions and
> >> nodes
> >> 2020-08-18 16:16:06,075 INFO    (MainThread) Deleting all nodes
> >> 2020-08-18 16:16:06,090 INFO    (MainThread) No active sessions
> >> 2020-08-18 16:16:06,130 INFO    (MainThread) Setting 10.35.18.156 as
> >> invalid address for target iqn.2003-01.org.vm-18-220.iqn2
> >> 2020-08-18 16:16:06,131 INFO    (MainThread) Setting 10.35.18.156 as
> >> invalid address for target iqn.2003-01.org.vm-18-220.iqn1
> >> 2020-08-18 16:16:06,131 INFO    (MainThread) Discovered connections:
> >> {('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'),
> >> ('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'),
> >> ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1'),
> >> ('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0')}
> >> 2020-08-18 16:16:06,132 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
> >> 2020-08-18 16:16:06,147 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
> >> 2020-08-18 16:16:06,162 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
> >> 2020-08-18 16:16:06,176 INFO    (MainThread) Adding node for target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
> >> 2020-08-18 16:16:06,190 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=True)
> >> 2020-08-18 16:16:06,324 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=True)
> >> 2020-08-18 16:18:06,351 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=True)
> >> 2020-08-18 16:18:06,356 ERROR   (MainThread) Job failed: Command
> >> ['iscsiadm', '--mode', 'node', '--targetname',
> >> 'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '
> >> 0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to
> >> [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal:
> >> 0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target:
> >> iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiator
> >> reported error (8 - connection timed out)\niscsiadm: Could not log into all
> >> portals'
> >> 2020-08-18 16:18:06,589 INFO    (login_0) Login to target
> >> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=True)
> >> 2020-08-18 16:20:06,643 ERROR   (MainThread) Job failed: Command
> >> ['iscsiadm', '--mode', 'node', '--targetname',
> >> 'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '
> >> 0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to
> >> [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal:
> >> 0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target:
> >> iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator
> >> reported error (8 - connection timed out)\niscsiadm: Could not log into all
> >> portals'
> >> 2020-08-18 16:20:06,656 INFO    (MainThread) Connecting completed in
> >> 240.524s
> >>
> >>
> >> Thanks for helping out,
> >> Amit
> >>
> >> On Thursday, August 13, 2020 at 5:32:26 PM UTC+3 nir...@gmail.com wrote:
> >>
> >>> On Thu, Aug 13, 2020 at 1:32 AM The Lee-Man <leeman...@gmail.com> wrote:
> >>>
> >>>> On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:
> >>>>>
> >>>>> ...
> >>>>>
> >>>>>>
> >>>>>>> The other option is to use one login-all call without parallelism,
> >>>>>>> but that would have other implications on our system to consider.
> >>>>>>>
> >>>>>>
> >>>>>> Such as?
> >>>>>>
> >>>>> As mentioned above,  unless there is a way to specify a list of
> >>>>> targets and portals for a single login (all) command.
> >>>>>
> >>>>>>
> >>>>>>> Your answers would be helpful once again.
> >>>>>>>
> >>>>>>> Thanks,
> >>>>>>> - Amit
> >>>>>>>
> >>>>>>>
> >>>>>> You might be interested in a new feature I'm considering adding to
> >>>>>> iscsiadm to do asynchronous logins. In other words, the iscsiadm could,
> >>>>>> when asked to login to one or more targets, would send the login request to
> >>>>>> the targets, then return success immediately. It is then up to the end-user
> >>>>>> (you in this case) to poll for when the target actually shows up.
> >>>>>>
> >>>>> This sounds very interesting, but probably will be available to us
> >>>>> only on later RHEL releases, if chosen to be delivered downstream.
> >>>>> At present it seems we can only use the login-all way or logins in a
> >>>>> dedicated threads per target-portal.
> >>>>>
> >>>>>>
> >>>>>> ...
> >>>>>>
> >>>>>
> >>>> So you can only use RH-released packages?
> >>>>
> >>>
> >>> Yes, we support RHEL and CentOS now.
> >>>
> >>>
> >>>> That's fine with me, but I'm asking you to test a new feature and see
> >>>> if it fixes your problems. If it helped, I would add up here in this repo,
> >>>> and redhat would get it by default when they updated, which they do
> >>>> regularly, as does my company (SUSE).
> >>>>
> >>>
> >>> Sure, this is how we do things. But using async login is something we
> >>> can use only
> >>> in a future version, maybe RHEL/CentOS 8.4, since it is probably too
> >>> late for 8.3.
> >>>
> >>> Just as a "side" point, I wouldn't attack your problem by manually
> >>>> listing nodes to login to.
> >>>>
> >>>> It does seem as if you assume you are the only iscsi user on the
> >>>> system. In that case, you have complete control of the node database.
> >>>> Assuming your targets do not change, you can set up your node database once
> >>>> and never have to discover iscsi targets again. Of course if targets
> >>>> change, you can update your node database, but only as needed, i.e. full
> >>>> discovery shouldn't be needed each time you start up, unless targets are
> >>>> really changing all the time in your environment.
> >>>>
> >>>
> >>> This is partly true. in oVirt, there is the vdsm daemon managing iSCSI
> >>> connections.
> >>> so usually only vdsm manipulates the database.
> >>>
> >>> However even in vdsm we have an issue when we attach a Cinder based
> >>> volume.
> >>> In this case we use os-brick (https://github.com/openstack/os-brick) to
> >>> attach the
> >>> volume, and it will discover and login to the volume.
> >>>
> >>> And of course we cannot prevent an admin from changing the database for
> >>> their
> >>> valid reasons.
> >>>
> >>> So being able to login/logout to specific nodes is very attractive for
> >>> us.
> >>>
> >>> If you do discovery and have nodes in your node database you don't like,
> >>>> just remove them.
> >>>>
> >>>
> >>> We can do this, adding and removing nodes we added, but we cannot remove
> >>> nodes
> >>> we did not add. If may be something added by os-brik or an administrator.
> >>>
> >>> Another point about your scheme: you are setting each node's 'startup'
> >>>> to 'manual', but manual is the default, and since you seem to own the
> >>>> open-iscsi code on this system, you can ensure the default is manual.
> >>>> Perhaps because this is a test?
> >>>>
> >>>
> >>> No, this is our production setup. I don't know why we specify manual,
> >>> maybe
> >>> this was not the default in 2009 when this code was written, or maybe
> >>> the intent
> >>> was to be explicit about it, in case the default would change?
> >>>
> >>> Do you see a problem with explicit node.startup=manual?
> >>>
> >>>
> >>>>
> >>>> So, again, I ask you if you will test the async login code? It's really
> >>>> not much extra work -- just a "git clone" and a "make install" (mostly). If
> >>>> not, the async feature may make it into iscsiadm any way, some time soon,
> >>>> but I'd really prefer other testers for this feature before that.
> >>>>
> >>>
> >>> Sure, we will test this.
> >>>
> >>> Having async login API sounds great, but my concern is how do we wait
> >>> for the
> >>> login result. For example with systemd many things became asynchronous,
> >>> but
> >>> there is no good way to wait for things. Few examples are mounts that
> >>> can fail
> >>> after the mount command completes, because after the completion udev
> >>> changes
> >>> permissions on the mount, or multipath devices, which may not be ready
> >>> after
> >>> connecting to a target.
> >>>
> >>> Can you elaborate on how you would wait for the login result, and how
> >>> would you
> >>> get login error for reporting up the stack? How can you handle timeouts?
> >>> This is
> >>> easy to do when using synchronous API with threads.
> >>>
> >>> From our point of view we want to be able to:
> >>>
> >>>     start async login process
> >>>     for result in login results:
> >>>         add result to response
> >>>     return response with connection details
> >>>
> >>> This runs on every host in a cluster, and the results are returned to
> >>> oVirt engine,
> >>> managing the cluster.
> >>>
> >>> Cheers,
> >>> Nir
> >>>
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d02edd0c-7a27-426c-9ead-be3a3a646e2dn%40googlegroups.com.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200922122309.32vierh3ulnlxxum%40localhost.
