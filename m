Return-Path: <open-iscsi+bncBC22XCF67ADRBYOVU75QKGQEEVBM2VI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 883A02741E1
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Sep 2020 14:15:30 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id n13sf3790401ybk.9
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Sep 2020 05:15:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600776929; cv=pass;
        d=google.com; s=arc-20160816;
        b=UkwzwQ/K97t8TlJzgwsz+YerDSwXl4W6fAgCOkn9aK5JK022nbrSeQG/OERUX6qF5P
         izVHKEYMi2wD4LFyXZ/ScSBZhHIJJdw5JV4BswqXL7C11dKgIUJAsPGsUrUOQ1DCt9Ri
         F9nKm6tlyd3CImx5NDNEVhoQ6lWp/vMS1AS9H9q1yjM4iRaBgbbrRUitqi+ErAqmOnHN
         wCuplTgohiyzMiOK91vGjn85IhTVzqYRoeC6Bkdjj1Pdpg00YFxfs4vzpAY7FIvU+ZWI
         C5PKmg/yarc3DCJFxGWhzohn8DRSPU8YqQAtR5fcdN+2B/ayqS9z2vLSAP0IEmG/1t4i
         brBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :in-reply-to:mime-version:references:message-id:subject:to:from:date
         :sender:dkim-signature;
        bh=1eK40fL3kp65XVslZtPNnzNksLwxc9XJQHSoOAWGWf4=;
        b=vZiyf1mZHAI3G6Rtmr0ZkySOlSkFdM1KtX23g6uXUNZLpLKPC8OgM+9mxmKQ3+2I0p
         AEClkePE+62Z4IfOKVk+s1rOLNUIncTtvRRGSZo94PNfRDKy1z3Fw0sk0cvxbxDDo+9A
         OZm0Ni583sxMHupQMIS2P+7brRBf2yVP/CJlH1LKbQYze9ppD0P72D2YX4OJaP+wCPGs
         LjoAi5eaxN+0WJHqr5VDU0GNbeubEssGZqLc9vZ+Yp898hnAKamjrSOU3IRIHacfD5D9
         7apsEQutfxyzrTe5PJaweNgHejAWg077rnEeBY4VniwcT3UgXTzhx+2VIQbhnh4YiFPQ
         kUoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eUHgRkgU;
       spf=pass (google.com: domain of geguileo@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1eK40fL3kp65XVslZtPNnzNksLwxc9XJQHSoOAWGWf4=;
        b=OTzPL2bSk3bNoN5hJj6bRA0CParflgOQLSIzJf8nvwinfHqOuvKubz5P0BjaocCCGe
         JRxyWdk9tcAS/Fbzbtpd5HDu/jLJ2TO+lzvPS+2ee0hDIuZ2Fma0f7EctYDWeK8AZdiB
         gjWwWJ8NDgWNwcF+0/oawoZHLhih096htQDRAB22hA/bD1/NWILJPRx7F8UfSB+7TBxZ
         s+vl+IT7Di7Z53icP8cWkWnxfxTND3ihgSgIxbSMX8mlUDrE2L7SAfn9opMq/G4ip+2q
         oHf91j7BhDBApM0M2yuT0JXfZXhhe8BGdCA7pSjhdCf5kxWblkujoJ13MxoAk0Q9yjYN
         Wt/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1eK40fL3kp65XVslZtPNnzNksLwxc9XJQHSoOAWGWf4=;
        b=FeIVjWGKS6r7uYWMm0QrPnlqPE7cb6uWseV2lGsUx7QTEau2iW43NKaOlD/D9RhdhN
         zrQPbqVzO5N3areZvGjzKQi7JfnestY/w8f/4N7bwBItrfrDJVMVGDH1DGRLxxP925Fu
         hlTfHPTYLjYa2Jts2gy8Qs08jvNTJWRnXMMAKzXjVHJIEPiBtzIWSqUWwL5NQw+n1yU1
         KO8GnNr0gHDFbYZQ44/tscxBc1O30CV8t0On/ykntDpPmO5FmBdPJ75cmtgQvl6WV6tT
         9r9gYnzTQusdIX9fUV2pYyiiqtHBAlOEdzlYY07IlcLfx6jU+1TPdxDjVSAts+CJfMWB
         7TLA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531jzjkpiN5ZIWRJ9SbD821udjm6S3eaI0aA80TBEsiaW9oYHvw8
	fli5foZ+VsnkcRjjX/cyv/c=
X-Google-Smtp-Source: ABdhPJw2q2rrQWRrCauHZcpUymximyRklo9ECGe+4Wjz553itOQAzY2ej4yQ6rTuxpoGN2/tONVMDw==
X-Received: by 2002:a5b:d09:: with SMTP id y9mr6155841ybp.258.1600776929545;
        Tue, 22 Sep 2020 05:15:29 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:8285:: with SMTP id r5ls7080961ybk.7.gmail; Tue, 22 Sep
 2020 05:15:29 -0700 (PDT)
X-Received: by 2002:a25:2cd1:: with SMTP id s200mr6558114ybs.110.1600776929037;
        Tue, 22 Sep 2020 05:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600776929; cv=none;
        d=google.com; s=arc-20160816;
        b=NPces26L+5YPq/CT2JYrYBN2EWbJpiCsbxh5GJCTK3hTGMo9m+AeW1FjkssEMHRn0a
         kIwxXqG081nYUvFMv7H3nwXbHFdjao4qSobgOJ8a3DNRT6creWRv7e6aXN6spW7bFP6y
         WNk4uY/WiswPf9Vf2Nz3HBabFOMD8XGa8kwKgPgPg6R/PCOr2uTdY7A0hKrMQtFo+8u8
         sARGmPw2T0h9ha/mOPaSfAS+MA6gVUPdqNhO+UxBPvoH5Z0TQz5/Is0kv997Q0+SSnqr
         xH+WtOtYAqSBxKZbXOruUyJ+648oyrJwilUJAX7UL783YCKls1WpGfn1UDFSmvDcuvBL
         LGyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=2jKdWu/+zjnhe4NszqnVsxHQjRNedkyQma8/sc8xvIQ=;
        b=1ChK54PR2Mfsm4W12z85lJq99IhrZmDxn/N8EOEFupcLgDU/MrzY1/xSrYWXiXG88N
         9IJHBNs+ylW+SYFeSUGFJhWB5mypjFOVfpXH85jG0QYtp+ai4kWIpUFwRkt01mGTsSvn
         FaOXzWkM3X4nm7yxVH8ZGk8tyIRSj+sJPGk05/l7g+XVCJXAr4LfzLGX9CMC40qkNwVw
         GKr7qqoyNAdQXx+aFFnRhbLQiVx8f1e1HuTjCZgs1iqIm6QAcx+6T1q4m/wqlK9+ltPA
         41ZxCvlCIXH2TjCL58gDN4bXrOoiLEOVaevCyCKvBaqDqPY9kA8qzl6AAwXWfBE0kSA4
         /ajw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eUHgRkgU;
       spf=pass (google.com: domain of geguileo@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s69si836988ybc.4.2020.09.22.05.15.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Sep 2020 05:15:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of geguileo@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-B3yv_IX6Ns2RjwQlaZ7RrQ-1; Tue, 22 Sep 2020 08:15:25 -0400
X-MC-Unique: B3yv_IX6Ns2RjwQlaZ7RrQ-1
Received: by mail-wr1-f71.google.com with SMTP id 33so7300576wrk.12
        for <open-iscsi@googlegroups.com>; Tue, 22 Sep 2020 05:15:25 -0700 (PDT)
X-Received: by 2002:a1c:e904:: with SMTP id q4mr713830wmc.151.1600776923958;
        Tue, 22 Sep 2020 05:15:23 -0700 (PDT)
X-Received: by 2002:a1c:e904:: with SMTP id q4mr713803wmc.151.1600776923643;
        Tue, 22 Sep 2020 05:15:23 -0700 (PDT)
Received: from localhost (81.172.116.119.dyn.user.ono.com. [81.172.116.119])
        by smtp.gmail.com with ESMTPSA id u8sm4270728wmj.45.2020.09.22.05.15.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 05:15:22 -0700 (PDT)
Date: Tue, 22 Sep 2020 14:15:20 +0200
From: Gorka Eguileor <geguileo@redhat.com>
To: open-iscsi@googlegroups.com
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
Message-ID: <20200922121520.76vlvwnx26d7hg7t@localhost>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
 <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
 <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
 <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: geguileo@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eUHgRkgU;
       spf=pass (google.com: domain of geguileo@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
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

On 13/08, Nir Soffer wrote:
> On Thu, Aug 13, 2020 at 1:32 AM The Lee-Man <leeman.duncan@gmail.com> wrote:
>
> > On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:
> >>
> >> ...
> >>
> >>>
> >>>> The other option is to use one login-all call without parallelism, but
> >>>> that would have other implications on our system to consider.
> >>>>
> >>>
> >>> Such as?
> >>>
> >> As mentioned above,  unless there is a way to specify a list of targets
> >> and portals for a single login (all) command.
> >>
> >>>
> >>>> Your answers would be helpful once again.
> >>>>
> >>>> Thanks,
> >>>> - Amit
> >>>>
> >>>>
> >>> You might be interested in a new feature I'm considering adding to
> >>> iscsiadm to do asynchronous logins. In other words, the iscsiadm could,
> >>> when asked to login to one or more targets, would send the login request to
> >>> the targets, then return success immediately. It is then up to the end-user
> >>> (you in this case) to poll for when the target actually shows up.
> >>>
> >> This sounds very interesting, but probably will be available to us only
> >> on later RHEL releases, if chosen to be delivered downstream.
> >> At present it seems we can only use the login-all way or logins in a
> >> dedicated threads per target-portal.
> >>
> >>>
> >>> ...
> >>>
> >>
> > So you can only use RH-released packages?
> >
>
> Yes, we support RHEL and CentOS now.
>
>
> > That's fine with me, but I'm asking you to test a new feature and see if
> > it fixes your problems. If it helped, I would add up here in this repo, and
> > redhat would get it by default when they updated, which they do regularly,
> > as does my company (SUSE).
> >
>
> Sure, this is how we do things. But using async login is something we can
> use only
> in a future version, maybe RHEL/CentOS 8.4, since it is probably too late
> for 8.3.
>
> Just as a "side" point, I wouldn't attack your problem by manually listing
> > nodes to login to.
> >
> > It does seem as if you assume you are the only iscsi user on the system.
> > In that case, you have complete control of the node database. Assuming your
> > targets do not change, you can set up your node database once and never
> > have to discover iscsi targets again. Of course if targets change, you can
> > update your node database, but only as needed, i.e. full discovery
> > shouldn't be needed each time you start up, unless targets are really
> > changing all the time in your environment.
> >
>
> This is partly true. in oVirt, there is the vdsm daemon managing iSCSI
> connections.
> so usually only vdsm manipulates the database.
>
> However even in vdsm we have an issue when we attach a Cinder based volume.
> In this case we use os-brick (https://github.com/openstack/os-brick) to
> attach the
> volume, and it will discover and login to the volume.
>

Hi,

For os-brick we would have to modify the library to use the async login
mechanism, because right now it's serializing iSCSI connections using an
in-process lock.

There are at least two reasons why we are serializing iSCSI
logins/logouts:

- It's easier: We don't have to be careful with race conditions between
  attach/detach/cleanup on failed attach on the same targets.

- It's more robust: This is the main reason. I don't remember exactly
  when/where it happened, but concurrently creating nodes and logging in
  could lead to a program (iscsiadm or iscsid, I don't remember) getting
  stuck forever.

It is in my TODO list to improve the connection speed by reducing the
critical section we are locking, but it's not something I'm currently
working on.


> And of course we cannot prevent an admin from changing the database for
> their
> valid reasons.
>
> So being able to login/logout to specific nodes is very attractive for us.
>
> If you do discovery and have nodes in your node database you don't like,
> > just remove them.
> >
>
> We can do this, adding and removing nodes we added, but we cannot remove
> nodes
> we did not add. If may be something added by os-brik or an administrator.
>
> Another point about your scheme: you are setting each node's 'startup' to
> > 'manual', but manual is the default, and since you seem to own the
> > open-iscsi code on this system, you can ensure the default is manual.
> > Perhaps because this is a test?
> >
>
> No, this is our production setup. I don't know why we specify manual, maybe
> this was not the default in 2009 when this code was written, or maybe the
> intent
> was to be explicit about it, in case the default would change?
>

Yes, that's the reason. The os-brick library doesn't know if the system
has customized defaults, so it sets every configuration option that is
necessary for its correct operation explicitly.


> Do you see a problem with explicit node.startup=manual?
>

The only downside I can think of is the time spent setting it.

Cheers,
Gorka.

>
> >
> > So, again, I ask you if you will test the async login code? It's really
> > not much extra work -- just a "git clone" and a "make install" (mostly). If
> > not, the async feature may make it into iscsiadm any way, some time soon,
> > but I'd really prefer other testers for this feature before that.
> >
>
> Sure, we will test this.
>
> Having async login API sounds great, but my concern is how do we wait for
> the
> login result. For example with systemd many things became asynchronous, but
> there is no good way to wait for things. Few examples are mounts that can
> fail
> after the mount command completes, because after the completion udev changes
> permissions on the mount, or multipath devices, which may not be ready after
> connecting to a target.
>
> Can you elaborate on how you would wait for the login result, and how would
> you
> get login error for reporting up the stack? How can you handle timeouts?
> This is
> easy to do when using synchronous API with threads.
>
> From our point of view we want to be able to:
>
>     start async login process
>     for result in login results:
>         add result to response
>     return response with connection details
>
> This runs on every host in a cluster, and the results are returned to oVirt
> engine,
> managing the cluster.
>
> Cheers,
> Nir
>
> --
> You received this message because you are subscribed to the Google Groups "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200922121520.76vlvwnx26d7hg7t%40localhost.
