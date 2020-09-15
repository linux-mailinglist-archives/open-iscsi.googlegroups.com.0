Return-Path: <open-iscsi+bncBC755V5RXMKBBUWEQT5QKGQE7CZVHLQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF4A26AE9E
	for <lists+open-iscsi@lfdr.de>; Tue, 15 Sep 2020 22:21:39 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id 33sf1496462ota.10
        for <lists+open-iscsi@lfdr.de>; Tue, 15 Sep 2020 13:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Uuwd+gC7Uxn+t2RrUDxdMy+PlX3DQHbWNr7uIBe6qXg=;
        b=EpDBfi9GShrTMNVPtIXZxreZhuAxN1Q5n4nu3uTePWaR+RlJ3owBPWJSUVaTIQr2gS
         kTTfCRWD8WhonJJ09vAim67pEq7ij/bLS2eHpqx1wATWnzu/Gxj5IZ6UqRePBoSuWTeY
         KK9S/yre/KV9Qpk86EsF63Po/hdQ0xEozMJgfBUPO37QKl5etYslbe2Q/sE0rRIvF40j
         gE4oF/CRcVcZng+yIi0YGSFt9jW3vdmea35XNS8+xEgWsatixWeWPKJA41NEjMlrhkjR
         G6vOtBWPUEOjxs5c9WpOm/8AR5yBY9gnWbS/OVt35jLu0OwAUq9ic3zY8HMsugfjsfbQ
         xJ3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uuwd+gC7Uxn+t2RrUDxdMy+PlX3DQHbWNr7uIBe6qXg=;
        b=W08gGuDy4KIGOLn1O6Oqt7EDNQwbSGqoOdz4ueN+w3yePssf+fqmsbmsKtA7CVcFnS
         F5UcnqpvrChe8OndwSGkKXPXQQ9pr59a9bm7b68+U7Ad+IeHJ+Og4xOQYgv3S/YuR0KL
         omBq426I4c1pKOtJ9GGbRlYccpi7Z9EBbYSOdxoWtu+snNXNRhMgb80pEiLNLZtzlcOy
         yeVq6mrlr0RCGtm9dQyFU2hpG81KH8mRhHCXT5DWFaIh2DseNwCF9ZuDdq0wrY9qFnkx
         Fm14PTwPmV547uZaJXnqBQIci4m1JL8mOgicTIolGjfF7LSgOmhofVdzLb/E8Q2fgRP2
         n3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uuwd+gC7Uxn+t2RrUDxdMy+PlX3DQHbWNr7uIBe6qXg=;
        b=tekZkh3y5ZsknbgJRmidkUGpQeyd5XtZj6nDCN/tSOfaQsH9jXgxL4EAU7uyayBHfx
         5rTwiOm2f81TZjAQVvt0kwaZwO1sRMy1u5Erlw7Nftbzl9cUHLRCyO2Fs3TL6CKHLqXw
         +J8N8JHKU+1vw7yq3fs+zwfJjfq/WCha7RcMaJv8v0h0lJtg3Wt2VE/1xpwaRTxRIwW9
         1jyrh1KtF9L92EcTqbzxgcTc3VUq6OacbvjBVrMrFHd19Kh4wqla2EZiMOmE/7a3YvLW
         N9MTkv9HVziQLAoJvmIgPwDsT/XwkCB1TMxMC1N2TGm/D7V+vsN77xvmGLV95CVv0goU
         1skw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533eyjKe4VBs4aID3JEvDwwLss5fkZ0DfQht/xvuffWg2Te96Z8b
	olIygWSmv/h856WSpuCaX7Q=
X-Google-Smtp-Source: ABdhPJyaJE9ymfJ7g/inC4BjRd4A3JWqrzwJrQ5jvgB1Dxq/VrFUaztDcjLrg9b6D1HoIQiTLvrSkg==
X-Received: by 2002:a54:488c:: with SMTP id r12mr870347oic.60.1600201298757;
        Tue, 15 Sep 2020 13:21:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls47063oic.3.gmail; Tue, 15 Sep
 2020 13:21:38 -0700 (PDT)
X-Received: by 2002:aca:ea57:: with SMTP id i84mr883175oih.0.1600201298018;
        Tue, 15 Sep 2020 13:21:38 -0700 (PDT)
Date: Tue, 15 Sep 2020 13:21:37 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <ade44206-3ba3-4e03-89fb-20deefa3c0dfn@googlegroups.com>
In-Reply-To: <1f197a6d-cf7c-4723-a3f1-1d98b3d98520n@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
 <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
 <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
 <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
 <1f197a6d-cf7c-4723-a3f1-1d98b3d98520n@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_502_2048200843.1600201297190"
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

------=_Part_502_2048200843.1600201297190
Content-Type: multipart/alternative; 
	boundary="----=_Part_503_1276860349.1600201297190"

------=_Part_503_1276860349.1600201297190
Content-Type: text/plain; charset="UTF-8"

I believe the best way to check for the async session to complete is to 
look for results. Does a new disc show up? That sort of high-level 
algorithm will be the best, because it waits for what you actually care 
about.

If you'd like to wait until iscsiadm says the session is complete, that 
seems like it'd be possible to, but be advised there is a finite amount of 
time between when (1) the session connects, (2) iscsiadm will show the 
session as valid, and (3) when udev and friends in the operating system 
instantiate the disc.

By the way, how are you simulating one target is down? Just curious.

Lastly, yes, I could add code to iscsiadm to make "iscsiadm -m node -T 
<iqn> ... --login --no_wait" work. Would you be willing to test it (in a 
branch) if I did?

On Tuesday, August 18, 2020 at 6:23:45 AM UTC-7 aba...@redhat.com wrote:

> Hi Lee,
>
> Thanks for adding the async login support to upstream. I've ran some tests 
> using the iscsiadm built from there
> and would like to ask:
>
> 1. How is it possible to gather the async logins return status? if 
> understood correctly, the proposed way
> is to lookup for the connections in the output of "iscsiadm -m session" 
> after the async logins were launched.
> Currently, I am using a sampling loop, checking at 1 second intervals the 
> output of iscsiadm -m session for
> presence of expected connections targets and portals and breaks if all 
> were found or not found within 
> the expected timeout interval, which for the default iscsi settings is 
> considered as following: 
> (120 seconds timeout per connection login) * (number of connections) / 
> (number of workers)
> Is there a better way? I am not sure how to gather the error status when a 
> connection not able to login in such case.
>
> 2. Would it also be supported for non-login-all mode? For "iscsiadm -m 
> node -T target -p portal -I interface --login"
> I get same timeouts with/without the --no-wait flag, meaning the test 
> waits 240 seconds in case two connections
> are down when using a single node login worker for both cases, so I assume 
> it currently doesn't apply for this login mode.
>
> -- Simulating one portal down (2 connections down) with one worker, using 
> node login without --no-wait
>
> # python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d 
> 10.35.18.156 
>
> 2020-08-18 15:59:01,874 INFO    (MainThread) Removing prior sessions and 
> nodes
> 2020-08-18 15:59:01,882 INFO    (MainThread) Deleting all nodes
> 2020-08-18 15:59:01,893 INFO    (MainThread) No active sessions
> 2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as 
> invalid address for target iqn.2003-01.org.vm-18-220.iqn2
> 2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as 
> invalid address for target iqn.2003-01.org.vm-18-220.iqn1
> 2020-08-18 15:59:01,943 INFO    (MainThread) Discovered connections: 
> {('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'), 
> ('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0'), 
> ('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'), 
> ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1')}
> 2020-08-18 15:59:01,944 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
> 2020-08-18 15:59:01,956 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
> 2020-08-18 15:59:01,968 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
> 2020-08-18 15:59:01,980 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
> 2020-08-18 15:59:01,995 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=False)
> 2020-08-18 16:01:02,019 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=False)
> 2020-08-18 16:01:02,028 ERROR   (MainThread) Job failed: Command 
> ['iscsiadm', '--mode', 'node', '--targetname', 
> 'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '
> 0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default, 
> target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0]' err='iscsiadm: 
> Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, 
> portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection 
> timed out)\niscsiadm: Could not log into all portals'
> 2020-08-18 16:03:02,045 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=False)
> 2020-08-18 16:03:02,053 ERROR   (MainThread) Job failed: Command 
> ['iscsiadm', '--mode', 'node', '--targetname', 
> 'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '
> 0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default, 
> target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0]' err='iscsiadm: 
> Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, 
> portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection 
> timed out)\niscsiadm: Could not log into all portals'
> 2020-08-18 16:03:02,321 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=False)
> 2020-08-18 16:03:02,695 INFO    (MainThread) Connecting completed in 
> 240.752s
>
> -- Simulating one portal down (2 connections down) with one worker, using 
> node login with --no-wait
>
> # python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d 
> 10.35.18.156  --nowait
>
> 2020-08-18 16:16:05,802 INFO    (MainThread) Removing prior sessions and 
> nodes
> 2020-08-18 16:16:06,075 INFO    (MainThread) Deleting all nodes
> 2020-08-18 16:16:06,090 INFO    (MainThread) No active sessions
> 2020-08-18 16:16:06,130 INFO    (MainThread) Setting 10.35.18.156 as 
> invalid address for target iqn.2003-01.org.vm-18-220.iqn2
> 2020-08-18 16:16:06,131 INFO    (MainThread) Setting 10.35.18.156 as 
> invalid address for target iqn.2003-01.org.vm-18-220.iqn1
> 2020-08-18 16:16:06,131 INFO    (MainThread) Discovered connections: 
> {('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'), 
> ('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'), 
> ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1'), 
> ('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0')}
> 2020-08-18 16:16:06,132 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
> 2020-08-18 16:16:06,147 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
> 2020-08-18 16:16:06,162 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
> 2020-08-18 16:16:06,176 INFO    (MainThread) Adding node for target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
> 2020-08-18 16:16:06,190 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=True)
> 2020-08-18 16:16:06,324 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=True)
> 2020-08-18 16:18:06,351 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=True)
> 2020-08-18 16:18:06,356 ERROR   (MainThread) Job failed: Command 
> ['iscsiadm', '--mode', 'node', '--targetname', 
> 'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '
> 0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to 
> [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal: 
> 0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target: 
> iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiator 
> reported error (8 - connection timed out)\niscsiadm: Could not log into all 
> portals'
> 2020-08-18 16:18:06,589 INFO    (login_0) Login to target 
> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=True)
> 2020-08-18 16:20:06,643 ERROR   (MainThread) Job failed: Command 
> ['iscsiadm', '--mode', 'node', '--targetname', 
> 'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '
> 0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to 
> [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 
> 0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target: 
> iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator 
> reported error (8 - connection timed out)\niscsiadm: Could not log into all 
> portals'
> 2020-08-18 16:20:06,656 INFO    (MainThread) Connecting completed in 
> 240.524s
>
>
> Thanks for helping out,
> Amit
>
> On Thursday, August 13, 2020 at 5:32:26 PM UTC+3 nir...@gmail.com wrote:
>
>> On Thu, Aug 13, 2020 at 1:32 AM The Lee-Man <leeman...@gmail.com> wrote:
>>
>>> On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:
>>>>
>>>> ...
>>>>
>>>>>
>>>>>> The other option is to use one login-all call without parallelism, 
>>>>>> but that would have other implications on our system to consider.
>>>>>>
>>>>>
>>>>> Such as? 
>>>>>
>>>> As mentioned above,  unless there is a way to specify a list of targets 
>>>> and portals for a single login (all) command.
>>>>
>>>>>
>>>>>> Your answers would be helpful once again.
>>>>>>
>>>>>> Thanks,
>>>>>> - Amit
>>>>>>
>>>>>>
>>>>> You might be interested in a new feature I'm considering adding to 
>>>>> iscsiadm to do asynchronous logins. In other words, the iscsiadm could, 
>>>>> when asked to login to one or more targets, would send the login request to 
>>>>> the targets, then return success immediately. It is then up to the end-user 
>>>>> (you in this case) to poll for when the target actually shows up.
>>>>>
>>>> This sounds very interesting, but probably will be available to us only 
>>>> on later RHEL releases, if chosen to be delivered downstream.
>>>> At present it seems we can only use the login-all way or logins in a 
>>>> dedicated threads per target-portal.
>>>>
>>>>>
>>>>> ...
>>>>>
>>>>
>>> So you can only use RH-released packages?
>>>
>>
>> Yes, we support RHEL and CentOS now.
>>  
>>
>>> That's fine with me, but I'm asking you to test a new feature and see if 
>>> it fixes your problems. If it helped, I would add up here in this repo, and 
>>> redhat would get it by default when they updated, which they do regularly, 
>>> as does my company (SUSE).
>>>
>>
>> Sure, this is how we do things. But using async login is something we can 
>> use only
>> in a future version, maybe RHEL/CentOS 8.4, since it is probably too late 
>> for 8.3.
>>
>> Just as a "side" point, I wouldn't attack your problem by manually 
>>> listing nodes to login to.
>>>
>>> It does seem as if you assume you are the only iscsi user on the system. 
>>> In that case, you have complete control of the node database. Assuming your 
>>> targets do not change, you can set up your node database once and never 
>>> have to discover iscsi targets again. Of course if targets change, you can 
>>> update your node database, but only as needed, i.e. full discovery 
>>> shouldn't be needed each time you start up, unless targets are really 
>>> changing all the time in your environment.
>>>
>>
>> This is partly true. in oVirt, there is the vdsm daemon managing iSCSI 
>> connections.
>> so usually only vdsm manipulates the database.
>>
>> However even in vdsm we have an issue when we attach a Cinder based 
>> volume.
>> In this case we use os-brick (https://github.com/openstack/os-brick) to 
>> attach the
>> volume, and it will discover and login to the volume.
>>
>> And of course we cannot prevent an admin from changing the database for 
>> their
>> valid reasons.
>>
>> So being able to login/logout to specific nodes is very attractive for 
>> us. 
>>
>> If you do discovery and have nodes in your node database you don't like, 
>>> just remove them.
>>>
>>
>> We can do this, adding and removing nodes we added, but we cannot remove 
>> nodes
>> we did not add. If may be something added by os-brik or an administrator.
>>
>> Another point about your scheme: you are setting each node's 'startup' to 
>>> 'manual', but manual is the default, and since you seem to own the 
>>> open-iscsi code on this system, you can ensure the default is manual. 
>>> Perhaps because this is a test?
>>>
>>
>> No, this is our production setup. I don't know why we specify manual, 
>> maybe
>> this was not the default in 2009 when this code was written, or maybe the 
>> intent
>> was to be explicit about it, in case the default would change?
>>
>> Do you see a problem with explicit node.startup=manual?
>>  
>>
>>>
>>> So, again, I ask you if you will test the async login code? It's really 
>>> not much extra work -- just a "git clone" and a "make install" (mostly). If 
>>> not, the async feature may make it into iscsiadm any way, some time soon, 
>>> but I'd really prefer other testers for this feature before that.
>>>
>>
>> Sure, we will test this.
>>
>> Having async login API sounds great, but my concern is how do we wait for 
>> the 
>> login result. For example with systemd many things became asynchronous, 
>> but
>> there is no good way to wait for things. Few examples are mounts that can 
>> fail
>> after the mount command completes, because after the completion udev 
>> changes
>> permissions on the mount, or multipath devices, which may not be ready 
>> after
>> connecting to a target.
>>
>> Can you elaborate on how you would wait for the login result, and how 
>> would you
>> get login error for reporting up the stack? How can you handle timeouts? 
>> This is 
>> easy to do when using synchronous API with threads.
>>
>> From our point of view we want to be able to:
>>
>>     start async login process
>>     for result in login results:
>>         add result to response
>>     return response with connection details
>>
>> This runs on every host in a cluster, and the results are returned to 
>> oVirt engine,
>> managing the cluster.
>>
>> Cheers,
>> Nir
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ade44206-3ba3-4e03-89fb-20deefa3c0dfn%40googlegroups.com.

------=_Part_503_1276860349.1600201297190
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>I believe the best way to check for the async session to complete is t=
o look for results. Does a new disc show up? That sort of high-level algori=
thm will be the best, because it waits for what you actually care about.</d=
iv><div><br></div><div>If you'd like to wait until iscsiadm says the sessio=
n is complete, that seems like it'd be possible to, but be advised there is=
 a finite amount of time between when (1) the session connects, (2) iscsiad=
m will show the session as valid, and (3) when udev and friends in the oper=
ating system instantiate the disc.</div><div><br></div><div>By the way, how=
 are you simulating one target is down? Just curious.</div><div><br></div><=
div>Lastly, yes, I could add code to iscsiadm to make "iscsiadm -m node -T =
&lt;iqn&gt; ... --login --no_wait" work. Would you be willing to test it (i=
n a branch) if I did?<br></div><br><div class=3D"gmail_quote"><div dir=3D"a=
uto" class=3D"gmail_attr">On Tuesday, August 18, 2020 at 6:23:45 AM UTC-7 a=
ba...@redhat.com wrote:<br/></div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding=
-left: 1ex;"><div>Hi Lee,</div><div><br></div><div>Thanks for adding the as=
ync login support to upstream. I&#39;ve ran some tests using the iscsiadm b=
uilt from there<br></div><div>and would like to ask:</div><div><br></div><d=
iv>1. How is it possible to gather the async logins return status? if under=
stood correctly, the proposed way</div><div>is to lookup for the connection=
s in the output of &quot;iscsiadm -m session&quot; after the async logins w=
ere launched.</div><div>Currently, I am using a sampling loop, checking at =
1 second intervals the output of iscsiadm -m session for</div><div>presence=
 of expected connections targets and portals and breaks if all were found o=
r not found within <br></div><div>the expected timeout interval, which for =
the default iscsi settings is considered as following: <br></div><div>(120 =
seconds timeout per connection login) * (number of connections) / (number o=
f workers)</div><div>Is there a better way? I am not sure how to gather the=
 error status when a connection not able to login in such case.<br></div><d=
iv><br></div><div>2. Would it also be supported for non-login-all mode? For=
 &quot;iscsiadm -m node -T target -p portal -I interface --login&quot;</div=
><div>I get same timeouts with/without the --no-wait flag, meaning the test=
 waits 240 seconds in case two connections</div><div>are down when using a =
single node login worker for both cases, so I assume it currently doesn&#39=
;t apply for this login mode.<br></div><div><br></div><div>-- Simulating on=
e portal down (2 connections down) with one worker, using node login withou=
t --no-wait<br></div><div><br></div><div># python3 ./initiator.py=C2=A0 -j =
1 -i 10.35.18.220 10.35.18.156=C2=A0 -d 10.35.18.156 <br></div><div><br></d=
iv><div>2020-08-18 15:59:01,874 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Removin=
g prior sessions and nodes<br>2020-08-18 15:59:01,882 INFO=C2=A0=C2=A0=C2=
=A0 (MainThread) Deleting all nodes<br>2020-08-18 15:59:01,893 INFO=C2=A0=
=C2=A0=C2=A0 (MainThread) No active sessions<br>2020-08-18 15:59:01,943 INF=
O=C2=A0=C2=A0=C2=A0 (MainThread) Setting 10.35.18.156 as invalid address fo=
r target iqn.2003-01.org.vm-18-220.iqn2<br>2020-08-18 15:59:01,943 INFO=C2=
=A0=C2=A0=C2=A0 (MainThread) Setting 10.35.18.156 as invalid address for ta=
rget iqn.2003-01.org.vm-18-220.iqn1<br>2020-08-18 15:59:01,943 INFO=C2=A0=
=C2=A0=C2=A0 (MainThread) Discovered connections: {(&#39;iqn.2003-01.org.vm=
-18-220.iqn1&#39;, &#39;<a href=3D"http://0.0.0.0:0" target=3D"_blank" rel=
=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&am=
p;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D1600106173887000&amp;us=
g=3DAFQjCNGFwaUSn-k4ktU9g3ioEkbBhaGq9Q">0.0.0.0:0</a>,0&#39;), (&#39;iqn.20=
03-01.org.vm-18-220.iqn2&#39;, &#39;<a href=3D"http://0.0.0.0:0" target=3D"=
_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url=
?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D160010617388=
7000&amp;usg=3DAFQjCNGFwaUSn-k4ktU9g3ioEkbBhaGq9Q">0.0.0.0:0</a>,0&#39;), (=
&#39;iqn.2003-01.org.vm-18-220.iqn2&#39;, &#39;<a href=3D"http://10.35.18.2=
20:3260" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https:/=
/www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dg=
mail&amp;ust=3D1600106173887000&amp;usg=3DAFQjCNEu_ZQY8g5xMVrvobKWbAwN__o6m=
Q">10.35.18.220:3260</a>,1&#39;), (&#39;iqn.2003-01.org.vm-18-220.iqn1&#39;=
, &#39;<a href=3D"http://10.35.18.220:3260" target=3D"_blank" rel=3D"nofoll=
ow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp=
://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600106173887000&amp;usg=
=3DAFQjCNEu_ZQY8g5xMVrvobKWbAwN__o6mQ">10.35.18.220:3260</a>,1&#39;)}<br>20=
20-08-18 15:59:01,944 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Adding node for t=
arget iqn.2003-01.org.vm-18-220.iqn1 portal <a href=3D"http://0.0.0.0:0" ta=
rget=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google=
.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D1600=
106173887000&amp;usg=3DAFQjCNGFwaUSn-k4ktU9g3ioEkbBhaGq9Q">0.0.0.0:0</a>,0<=
br>2020-08-18 15:59:01,956 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Adding node =
for target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://0.0.0.0:=
0" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.g=
oogle.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=
=3D1600106173887000&amp;usg=3DAFQjCNGFwaUSn-k4ktU9g3ioEkbBhaGq9Q">0.0.0.0:0=
</a>,0<br>2020-08-18 15:59:01,968 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Addin=
g node for target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://1=
0.35.18.220:3260" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=
=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp=
;source=3Dgmail&amp;ust=3D1600106173887000&amp;usg=3DAFQjCNEu_ZQY8g5xMVrvob=
KWbAwN__o6mQ">10.35.18.220:3260</a>,1<br>2020-08-18 15:59:01,980 INFO=C2=A0=
=C2=A0=C2=A0 (MainThread) Adding node for target iqn.2003-01.org.vm-18-220.=
iqn1 portal <a href=3D"http://10.35.18.220:3260" target=3D"_blank" rel=3D"n=
ofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=
=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600106173887000&a=
mp;usg=3DAFQjCNEu_ZQY8g5xMVrvobKWbAwN__o6mQ">10.35.18.220:3260</a>,1<br>202=
0-08-18 15:59:01,995 INFO=C2=A0=C2=A0=C2=A0 (login_0) Login to target iqn.2=
003-01.org.vm-18-220.iqn1 portal <a href=3D"http://0.0.0.0:0" target=3D"_bl=
ank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=
=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D160010617388700=
0&amp;usg=3DAFQjCNGFwaUSn-k4ktU9g3ioEkbBhaGq9Q">0.0.0.0:0</a>,0 (nowait=3DF=
alse)<br>2020-08-18 16:01:02,019 INFO=C2=A0=C2=A0=C2=A0 (login_0) Login to =
target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://0.0.0.0:0" t=
arget=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.googl=
e.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D160=
0106173887000&amp;usg=3DAFQjCNGFwaUSn-k4ktU9g3ioEkbBhaGq9Q">0.0.0.0:0</a>,0=
 (nowait=3DFalse)<br>2020-08-18 16:01:02,028 ERROR=C2=A0=C2=A0 (MainThread)=
 Job failed: Command [&#39;iscsiadm&#39;, &#39;--mode&#39;, &#39;node&#39;,=
 &#39;--targetname&#39;, &#39;iqn.2003-01.org.vm-18-220.iqn1&#39;, &#39;--i=
nterface&#39;, &#39;default&#39;, &#39;--portal&#39;, &#39;<a href=3D"http:=
//0.0.0.0:0" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"htt=
ps://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail=
&amp;ust=3D1600106173887000&amp;usg=3DAFQjCNGFwaUSn-k4ktU9g3ioEkbBhaGq9Q">0=
.0.0.0:0</a>,0&#39;, &#39;--login&#39;] failed rc=3D8 out=3D&#39;Logging in=
 to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.=
0,0]&#39; err=3D&#39;iscsiadm: Could not login to [iface: default, target: =
iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiator re=
ported error (8 - connection timed out)\niscsiadm: Could not log into all p=
ortals&#39;<br>2020-08-18 16:03:02,045 INFO=C2=A0=C2=A0=C2=A0 (login_0) Log=
in to target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://10.35.=
18.220:3260" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"htt=
ps://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=
=3Dgmail&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNG600CWZHJO1I8pc3u5DT2Au=
RIhIQ">10.35.18.220:3260</a>,1 (nowait=3DFalse)<br>2020-08-18 16:03:02,053 =
ERROR=C2=A0=C2=A0 (MainThread) Job failed: Command [&#39;iscsiadm&#39;, &#3=
9;--mode&#39;, &#39;node&#39;, &#39;--targetname&#39;, &#39;iqn.2003-01.org=
.vm-18-220.iqn2&#39;, &#39;--interface&#39;, &#39;default&#39;, &#39;--port=
al&#39;, &#39;<a href=3D"http://0.0.0.0:0" target=3D"_blank" rel=3D"nofollo=
w" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp:=
//0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNF=
QxY599G0BlOk0OUqcZYj0NuF--w">0.0.0.0:0</a>,0&#39;, &#39;--login&#39;] faile=
d rc=3D8 out=3D&#39;Logging in to [iface: default, target: iqn.2003-01.org.=
vm-18-220.iqn2, portal: 0.0.0.0,0]&#39; err=3D&#39;iscsiadm: Could not logi=
n to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0=
.0,0].\niscsiadm: initiator reported error (8 - connection timed out)\niscs=
iadm: Could not log into all portals&#39;<br>2020-08-18 16:03:02,321 INFO=
=C2=A0=C2=A0=C2=A0 (login_0) Login to target iqn.2003-01.org.vm-18-220.iqn1=
 portal <a href=3D"http://10.35.18.220:3260" target=3D"_blank" rel=3D"nofol=
low" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhtt=
p://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600106173888000&amp;usg=
=3DAFQjCNG600CWZHJO1I8pc3u5DT2AuRIhIQ">10.35.18.220:3260</a>,1 (nowait=3DFa=
lse)<br>2020-08-18 16:03:02,695 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Connect=
ing completed in 240.752s<br></div><div><br></div><div>-- Simulating one po=
rtal down (2 connections down) with one worker, using node login with --no-=
wait</div><div><br></div><div># python3 ./initiator.py=C2=A0 -j 1 -i 10.35.=
18.220 10.35.18.156=C2=A0 -d 10.35.18.156=C2=A0 --nowait</div><div><br></di=
v><div>2020-08-18 16:16:05,802 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Removing=
 prior sessions and nodes<br>2020-08-18 16:16:06,075 INFO=C2=A0=C2=A0=C2=A0=
 (MainThread) Deleting all nodes<br>2020-08-18 16:16:06,090 INFO=C2=A0=C2=
=A0=C2=A0 (MainThread) No active sessions<br>2020-08-18 16:16:06,130 INFO=
=C2=A0=C2=A0=C2=A0 (MainThread) Setting 10.35.18.156 as invalid address for=
 target iqn.2003-01.org.vm-18-220.iqn2<br>2020-08-18 16:16:06,131 INFO=C2=
=A0=C2=A0=C2=A0 (MainThread) Setting 10.35.18.156 as invalid address for ta=
rget iqn.2003-01.org.vm-18-220.iqn1<br>2020-08-18 16:16:06,131 INFO=C2=A0=
=C2=A0=C2=A0 (MainThread) Discovered connections: {(&#39;iqn.2003-01.org.vm=
-18-220.iqn2&#39;, &#39;<a href=3D"http://10.35.18.220:3260" target=3D"_bla=
nk" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=
=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600106=
173888000&amp;usg=3DAFQjCNG600CWZHJO1I8pc3u5DT2AuRIhIQ">10.35.18.220:3260</=
a>,1&#39;), (&#39;iqn.2003-01.org.vm-18-220.iqn1&#39;, &#39;<a href=3D"http=
://0.0.0.0:0" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"ht=
tps://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmai=
l&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNFQxY599G0BlOk0OUqcZYj0NuF--w">=
0.0.0.0:0</a>,0&#39;), (&#39;iqn.2003-01.org.vm-18-220.iqn1&#39;, &#39;<a h=
ref=3D"http://10.35.18.220:3260" target=3D"_blank" rel=3D"nofollow" data-sa=
feredirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18=
.220:3260&amp;source=3Dgmail&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNG60=
0CWZHJO1I8pc3u5DT2AuRIhIQ">10.35.18.220:3260</a>,1&#39;), (&#39;iqn.2003-01=
.org.vm-18-220.iqn2&#39;, &#39;<a href=3D"http://0.0.0.0:0" target=3D"_blan=
k" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=
=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D160010617388800=
0&amp;usg=3DAFQjCNFQxY599G0BlOk0OUqcZYj0NuF--w">0.0.0.0:0</a>,0&#39;)}<br>2=
020-08-18 16:16:06,132 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Adding node for =
target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://10.35.18.220=
:3260" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://w=
ww.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgma=
il&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNG600CWZHJO1I8pc3u5DT2AuRIhIQ"=
>10.35.18.220:3260</a>,1<br>2020-08-18 16:16:06,147 INFO=C2=A0=C2=A0=C2=A0 =
(MainThread) Adding node for target iqn.2003-01.org.vm-18-220.iqn1 portal <=
a href=3D"http://0.0.0.0:0" target=3D"_blank" rel=3D"nofollow" data-safered=
irecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp=
;source=3Dgmail&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNFQxY599G0BlOk0OU=
qcZYj0NuF--w">0.0.0.0:0</a>,0<br>2020-08-18 16:16:06,162 INFO=C2=A0=C2=A0=
=C2=A0 (MainThread) Adding node for target iqn.2003-01.org.vm-18-220.iqn1 p=
ortal <a href=3D"http://10.35.18.220:3260" target=3D"_blank" rel=3D"nofollo=
w" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp:=
//10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600106173888000&amp;usg=
=3DAFQjCNG600CWZHJO1I8pc3u5DT2AuRIhIQ">10.35.18.220:3260</a>,1<br>2020-08-1=
8 16:16:06,176 INFO=C2=A0=C2=A0=C2=A0 (MainThread) Adding node for target i=
qn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://0.0.0.0:0" target=3D=
"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/ur=
l?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D16001061738=
88000&amp;usg=3DAFQjCNFQxY599G0BlOk0OUqcZYj0NuF--w">0.0.0.0:0</a>,0<br>2020=
-08-18 16:16:06,190 INFO=C2=A0=C2=A0=C2=A0 (login_0) Login to target iqn.20=
03-01.org.vm-18-220.iqn2 portal <a href=3D"http://10.35.18.220:3260" target=
=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com=
/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D=
1600106173888000&amp;usg=3DAFQjCNG600CWZHJO1I8pc3u5DT2AuRIhIQ">10.35.18.220=
:3260</a>,1 (nowait=3DTrue)<br>2020-08-18 16:16:06,324 INFO=C2=A0=C2=A0=C2=
=A0 (login_0) Login to target iqn.2003-01.org.vm-18-220.iqn1 portal <a href=
=3D"http://0.0.0.0:0" target=3D"_blank" rel=3D"nofollow" data-saferedirectu=
rl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;sourc=
e=3Dgmail&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNFQxY599G0BlOk0OUqcZYj0=
NuF--w">0.0.0.0:0</a>,0 (nowait=3DTrue)<br>2020-08-18 16:18:06,351 INFO=C2=
=A0=C2=A0=C2=A0 (login_0) Login to target iqn.2003-01.org.vm-18-220.iqn1 po=
rtal <a href=3D"http://10.35.18.220:3260" target=3D"_blank" rel=3D"nofollow=
" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp:/=
/10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600106173888000&amp;usg=3D=
AFQjCNG600CWZHJO1I8pc3u5DT2AuRIhIQ">10.35.18.220:3260</a>,1 (nowait=3DTrue)=
<br>2020-08-18 16:18:06,356 ERROR=C2=A0=C2=A0 (MainThread) Job failed: Comm=
and [&#39;iscsiadm&#39;, &#39;--mode&#39;, &#39;node&#39;, &#39;--targetnam=
e&#39;, &#39;iqn.2003-01.org.vm-18-220.iqn1&#39;, &#39;--interface&#39;, &#=
39;default&#39;, &#39;--portal&#39;, &#39;<a href=3D"http://0.0.0.0:0" targ=
et=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.c=
om/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D160010=
6173888000&amp;usg=3DAFQjCNFQxY599G0BlOk0OUqcZYj0NuF--w">0.0.0.0:0</a>,0&#3=
9;, &#39;--login&#39;, &#39;--no_wait&#39;] failed rc=3D8 out=3D&#39;Loggin=
g in to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.=
0.0.0,0]&#39; err=3D&#39;iscsiadm: Could not login to [iface: default, targ=
et: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiato=
r reported error (8 - connection timed out)\niscsiadm: Could not log into a=
ll portals&#39;<br>2020-08-18 16:18:06,589 INFO=C2=A0=C2=A0=C2=A0 (login_0)=
 Login to target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://0.=
0.0.0:0" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https:/=
/www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp=
;ust=3D1600106173888000&amp;usg=3DAFQjCNFQxY599G0BlOk0OUqcZYj0NuF--w">0.0.0=
.0:0</a>,0 (nowait=3DTrue)<br>2020-08-18 16:20:06,643 ERROR=C2=A0=C2=A0 (Ma=
inThread) Job failed: Command [&#39;iscsiadm&#39;, &#39;--mode&#39;, &#39;n=
ode&#39;, &#39;--targetname&#39;, &#39;iqn.2003-01.org.vm-18-220.iqn2&#39;,=
 &#39;--interface&#39;, &#39;default&#39;, &#39;--portal&#39;, &#39;<a href=
=3D"http://0.0.0.0:0" target=3D"_blank" rel=3D"nofollow" data-saferedirectu=
rl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;sourc=
e=3Dgmail&amp;ust=3D1600106173888000&amp;usg=3DAFQjCNFQxY599G0BlOk0OUqcZYj0=
NuF--w">0.0.0.0:0</a>,0&#39;, &#39;--login&#39;, &#39;--no_wait&#39;] faile=
d rc=3D8 out=3D&#39;Logging in to [iface: default, target: iqn.2003-01.org.=
vm-18-220.iqn2, portal: 0.0.0.0,0]&#39; err=3D&#39;iscsiadm: Could not logi=
n to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0=
.0,0].\niscsiadm: initiator reported error (8 - connection timed out)\niscs=
iadm: Could not log into all portals&#39;<br>2020-08-18 16:20:06,656 INFO=
=C2=A0=C2=A0=C2=A0 (MainThread) Connecting completed in 240.524s<br><br></d=
iv><div><br></div><div>Thanks for helping out,</div><div>Amit<br></div><br>=
<div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursd=
ay, August 13, 2020 at 5:32:26 PM UTC+3 <a href data-email-masked rel=3D"no=
follow">nir...@gmail.com</a> wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 13, 2020 at 1:3=
2 AM The Lee-Man &lt;<a rel=3D"nofollow">leeman...@gmail.com</a>&gt; wrote:=
<br></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">On Sunday, August 9, 20=
20 at 11:08:50 AM UTC-7, Amit Bawer wrote:<blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">...<br><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div><br></div><div>The other option is to use one login-=
all call without parallelism, but that would have other implications on our=
 system to consider.<br></div></blockquote><div><br></div></div><div dir=3D=
"ltr"><div>Such as? <br></div></div></blockquote><div>As mentioned above,=
=C2=A0 unless there is a way to specify a list of targets and portals for a=
 single login (all) command.<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div></div></div><div dir=3D"ltr"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div><br>Your answers would be helpf=
ul once again.</div><div><br>Thanks,<br>- Amit</div><br></blockquote><div><=
br></div></div><div dir=3D"ltr"><div>You might be interested in a new featu=
re I&#39;m considering adding to iscsiadm to do asynchronous logins. In oth=
er words, the iscsiadm could, when asked to login to one or more targets, w=
ould send the login request to the targets, then return success immediately=
. It is then up to the end-user (you in this case) to poll for when the tar=
get actually shows up.</div></div></blockquote><div>This sounds very intere=
sting, but probably will be available to us only on later RHEL releases, if=
 chosen to be delivered downstream.</div><div>At present it seems we can on=
ly use the login-all way or logins in a dedicated threads per target-portal=
.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div><br></div>...</div></blockquote></div></blockquote><div><br></div><=
div>So you can only use RH-released packages?</div></div></blockquote><div>=
<br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>Yes,=
 we support RHEL and CentOS now.</div></div></div><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>That&#39;s fine with me, but I&#39;m askin=
g you to test a new feature and see if it fixes your problems. If it helped=
, I would add up here in this repo, and redhat would get it by default when=
 they updated, which they do regularly, as does my company (SUSE).</div></d=
iv></blockquote><div><br></div></div></div><div dir=3D"ltr"><div class=3D"g=
mail_quote"><div>Sure, this is how we do things. But using async login is s=
omething we can use only</div><div>in a future version, maybe RHEL/CentOS 8=
.4, since it is probably too late for 8.3.</div></div></div><div dir=3D"ltr=
"><div class=3D"gmail_quote"><div><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div>Just as a &quot;side&quot; point, =
I wouldn&#39;t attack your problem by manually listing nodes to login to.</=
div><div><br></div><div>It does seem as if you assume you are the only iscs=
i user on the system. In that case, you have complete control of the node d=
atabase. Assuming your targets do not change, you can set up your node data=
base once and never have to discover iscsi targets again. Of course if targ=
ets change, you can update your node database, but only as needed, i.e. ful=
l discovery shouldn&#39;t be needed each time you start up, unless targets =
are really changing all the time in your environment.</div></div></blockquo=
te><div><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><=
div>This is partly true. in oVirt, there is the vdsm daemon managing iSCSI =
connections.</div><div>so usually only vdsm manipulates the database.</div>=
<div><br></div><div>However even in vdsm we have an issue when we attach a =
Cinder based volume.</div><div>In this case we use os-brick (<a href=3D"htt=
ps://github.com/openstack/os-brick" rel=3D"nofollow" target=3D"_blank" data=
-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://gith=
ub.com/openstack/os-brick&amp;source=3Dgmail&amp;ust=3D1600106173889000&amp=
;usg=3DAFQjCNG43lnd6ssGQMxKERysylCfDDWcHQ">https://github.com/openstack/os-=
brick</a>) to attach the</div><div>volume, and it will discover and login t=
o the volume.</div><div><br></div><div>And of course we cannot prevent an a=
dmin from changing the database for their</div><div>valid reasons.</div><di=
v><br></div><div>So being able to login/logout to specific nodes is very at=
tractive for us.=C2=A0</div></div></div><div dir=3D"ltr"><div class=3D"gmai=
l_quote"><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>If you do discovery and have nodes in your node databa=
se you don&#39;t like, just remove them.</div></div></blockquote><div><br><=
/div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>We can do=
 this, adding and removing nodes we added, but we cannot remove nodes</div>=
<div>we did not add. If may be something added by os-brik or an administrat=
or.</div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div><br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>Another point about your scheme: you are setting each node&#39;s &#39;sta=
rtup&#39; to &#39;manual&#39;, but manual is the default, and since you see=
m to own the open-iscsi code on this system, you can ensure the default is =
manual. Perhaps because this is a test?</div></div></blockquote><div><br></=
div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>No, this i=
s our production setup. I don&#39;t know why we specify manual, maybe</div>=
<div>this was not the default in 2009 when this code was written, or maybe =
the intent</div><div>was to be explicit about it, in case the default would=
 change?</div><div><br></div><div>Do you see a problem with explicit node.s=
tartup=3Dmanual?</div></div></div><div dir=3D"ltr"><div class=3D"gmail_quot=
e"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div><br></div><div>So, again, I ask you if you will test the a=
sync login code? It&#39;s really not much extra work -- just a &quot;git cl=
one&quot; and a &quot;make install&quot; (mostly). If not, the async featur=
e may make it into iscsiadm any way, some time soon, but I&#39;d really pre=
fer other testers for this feature before that.<br></div></div></blockquote=
><div><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><di=
v>Sure, we will test this.</div><div><br></div><div>Having async login API =
sounds great, but my concern is how do we wait for the=C2=A0</div><div>logi=
n result. For example with systemd many things became asynchronous, but</di=
v><div>there is no good way to wait for things. Few examples are mounts tha=
t can fail</div><div>after the mount command completes, because after the c=
ompletion udev changes</div><div>permissions on the mount, or multipath dev=
ices, which may not be ready after</div><div>connecting to a target.</div><=
div><br></div><div>Can you elaborate on how you would wait for the login re=
sult, and how would you</div><div>get login error for reporting up the stac=
k? How can you handle timeouts? This is=C2=A0</div><div>easy to do when usi=
ng synchronous API with threads.</div><div><br></div><div>From our point of=
 view we want to be able to:</div><div><br></div><div>=C2=A0 =C2=A0 start a=
sync login process</div><div>=C2=A0 =C2=A0 for result in login results:</di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 add result to response</div><div>=C2=A0 =
=C2=A0 return response with connection details</div><div><br></div><div>Thi=
s runs on every host in a cluster, and the results are returned to oVirt en=
gine,</div><div>managing the cluster.</div><div><br></div><div>Cheers,</div=
><div>Nir</div></div></div>
</blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ade44206-3ba3-4e03-89fb-20deefa3c0dfn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/ade44206-3ba3-4e03-89fb-20deefa3c0dfn%40googlegroups.com</a>.=
<br />

------=_Part_503_1276860349.1600201297190--

------=_Part_502_2048200843.1600201297190--
