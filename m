Return-Path: <open-iscsi+bncBCLI32UIRUJRBZ5M574QKGQELIKH35Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 560BE2485F2
	for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:23:53 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id f22sf11974491iof.20
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 06:23:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597757032; cv=pass;
        d=google.com; s=arc-20160816;
        b=bUl8jI+2cSCElPIZkUoo8MS6rfOdv7DtEH9Qum36iBRxrEwn2kaYv4Llz6etTe0vn6
         4LLAQPxxm2UKJ3fsVy4p07cqM3amHiKqdCS9UmY0+gMlnPKDcjXv8ZSwn6B4ljDZ6Y6q
         hDINX6Q358C3DOvlHRVcv+3ITbaFwjvIIBxWBLDR9Bs3KDuBoPvetNCUD8ULUm4F9hLh
         N6ee3AcO+tsBOHta7AmN6PcSbtxh3WwUuZJjRUJSt5VY85pOESPgMYbAvBqSZYKX95RY
         xlBu3d73FhZZmz+V9IQtAiE3T7xT743jP3lV8Rz/9/blX3+0SuxaWm5Qhi5wkl2zBRid
         FZ1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :references:in-reply-to:message-id:to:from:date:sender
         :dkim-signature;
        bh=KhlEAw3KGs5EPC9n2V+daSsw8xjTAm63cGkfc1XDq34=;
        b=c5bktZmEEs31GZjtPOrkjIcdmwINUEBr9UXBXM60y1lhwhYS5dsRDrFO0lOydLImWg
         0SwnFdcxSrWm/zBBngx5ymdAduszOnDk7yjvKrSKyVgnlhGq7+VGnWoFfS71tcx6Zivk
         kX87T0YqSL2cvuUUvmroLQgvAsULVm7f4lYrvFWQ/uyH7hZmcPt6c+uYne/V+s0k0q3I
         GzQ83TGE3hIF3dYwy+b1OD16WWL8cz1jaz7TmnRJc3fcSjNBK3D2hW0/AjH6jLGi9EzV
         Ij5eQaQSmsUOYCiJezOQ/KmbNBYTXua1i+ZrZ0Bq1vra80NCnz19zzMjzWpHA8Ce4yqy
         pyTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DslgHDQH;
       spf=neutral (google.com: 207.211.31.81 is neither permitted nor denied by best guess record for domain of abawer@redhat.com) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KhlEAw3KGs5EPC9n2V+daSsw8xjTAm63cGkfc1XDq34=;
        b=cY0A1VQFkWfKZvtSHn0qjmCyUEjAuh5bJisLCm6FwgLGQz5QTHFkyIadfHpjvrLqx9
         x6hIhYAzyU+AjcYjxu0WuDCqy2ExIJva48fjOp8rjkQie4Hp2hKey42/ugukDr9FDV4B
         AOVcrWmqRPkBJ2QuBQNAYXwMN7MuuoewKljBewLofTRnojXeQxOJzu/M5u/dkTEjtguR
         Bt5Z1U1l1qDR2/WXbEiU2KRQwEc3r0kQYLQKfUpHx+X+QZtL3aZuv/frvFG2w0RctYTG
         xmLuvFVcbhxR0rZ2CyvWdTLIwZ/q6uDJrscGKgm0zh6J1JM1SDwM4kH5mJC6iliW4CR0
         RNnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KhlEAw3KGs5EPC9n2V+daSsw8xjTAm63cGkfc1XDq34=;
        b=S6zKFUWDat8tNGx0p9aQEYsMpAKcNydwoAUcGk7Wp3pBOs/UUxI9mTNZthU9p9h3KO
         AnmFFTbvi/u8d3JJiqubOgRapGmNstlYf1qs2EgIh6P7k04MRacNuhz+gftKm8+0ka0j
         tpPoPX6QHTJj2zPCIfFaLvDPngMzsWv/IkyPO5O4cUlYCBDHSiyu9qEzHLR/vvXVBw/x
         9GB2sPD1yjooGhRzjRCbGL0PbzSLC44DHQjiB4Wjz9cQ20TXje1X9mjP4GukeX0ya+Hl
         XvdxPaWv5un8JCRWv6Zs0pqiP8YLsxMa9+ZNPpQWhmo1Wku85WIpt/XCEOjfi0GO6vjI
         mPwQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530D2f+8Mm0fJguDgnEiuq7TbJOkG4RuYl1hkZ9mNTqijAUQCnok
	l32YqPx/NoNq0xBFaoFYvFE=
X-Google-Smtp-Source: ABdhPJzQSxCrmdO0OsnWoW/tF30vFcJ8LZJvBNW/QnhXvKeDU+z1nQddH45dk2YTXNzmhwFcamcTjw==
X-Received: by 2002:a6b:8dd2:: with SMTP id p201mr16506369iod.152.1597757031984;
        Tue, 18 Aug 2020 06:23:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:c5c1:: with SMTP id v184ls3183980iof.1.gmail; Tue, 18
 Aug 2020 06:23:51 -0700 (PDT)
X-Received: by 2002:a05:6602:220f:: with SMTP id n15mr16452413ion.103.1597757031516;
        Tue, 18 Aug 2020 06:23:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597757031; cv=none;
        d=google.com; s=arc-20160816;
        b=b5r1wNMOA5tmm6LDuC71FhVJ2HBqHQp/Tdt7HMfwmrDcNMTIxuCk9nNNL/viOQtJ97
         idCu7pZZCZRklaWJ6vyC3wQIsLYqPsdHppA8/vFh6nLSQnmxtJVwT0WntJ9Gwho5Vmjg
         ODdhGyyEj/rCS9HyqsY892u+qvGZU6DjQF5pcNyX03B6sKovLx1cHmUx3g13ecNLhi7D
         gUCrbQRJjwlY8+lGO5JeyDg64mmwBDFtEiIX0voGO03FdMpwfrGl/p+rozcfkAEGigwa
         1swrzXw6Bk8nwof8X4bB2fqWNs9usz6h4OZ8DX4xejgRbEViYMvAtwoHAv6uyPgYtwqw
         8Akw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=V2umJAA1vjITCoBPRvIq+lGhn4xb8wfwPeHcSWAUX+I=;
        b=0Qt9WYtsxV4cUi71n04Vxb+9BW/j8XbkUB2sTGu3+AWvy9ELYUeqBbiNzTbtt2LrDa
         rU0+pyqaZA9jYynPTJKNYP1qPHc+YQV8LAjw4kWLWkz61wUAEnYCFJ0Lt3OobRVCYLPk
         25Fj1+JtBLR2hp+ifEfuPRPHT6WzTfqXh6ZPHg4Gf78Ydp0CQjCfUtP21p4G68ovsG/P
         T0jIo+OZ8hWKDMGR9QwyzQ0FWlg8rgKXlTrcEcgSxKjkMoCzJOKqimEe93efBPUL3vVq
         mLztGiTJb8m79ai7VXHKcB7IYYZqwpaJfZ8H7qAT+g0HUcwgt7EGwAHMDzeq9lMoA9w7
         5gIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DslgHDQH;
       spf=neutral (google.com: 207.211.31.81 is neither permitted nor denied by best guess record for domain of abawer@redhat.com) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id t6si1071775ioi.1.2020.08.18.06.23.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:23:51 -0700 (PDT)
Received-SPF: neutral (google.com: 207.211.31.81 is neither permitted nor denied by best guess record for domain of abawer@redhat.com) client-ip=207.211.31.81;
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-79-Tw7nEdvANoOFAjkptdePRg-1; Tue, 18 Aug 2020 09:23:47 -0400
X-MC-Unique: Tw7nEdvANoOFAjkptdePRg-1
Received: by mail-oi1-f197.google.com with SMTP id k7so7540767oih.12
        for <open-iscsi@googlegroups.com>; Tue, 18 Aug 2020 06:23:46 -0700 (PDT)
X-Received: by 2002:a9d:480d:: with SMTP id c13mr15438373otf.224.1597757026100;
        Tue, 18 Aug 2020 06:23:46 -0700 (PDT)
X-Received: by 2002:a9d:480d:: with SMTP id c13mr15438351otf.224.1597757025820;
        Tue, 18 Aug 2020 06:23:45 -0700 (PDT)
Date: Tue, 18 Aug 2020 06:23:44 -0700 (PDT)
From: Amit Bawer <abawer@redhat.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1f197a6d-cf7c-4723-a3f1-1d98b3d98520n@googlegroups.com>
In-Reply-To: <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
 <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
 <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
 <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_124_272163213.1597757024833"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DslgHDQH;
       spf=neutral (google.com: 207.211.31.81 is neither permitted nor denied
 by best guess record for domain of abawer@redhat.com) smtp.mailfrom=abawer@redhat.com;
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

------=_Part_124_272163213.1597757024833
Content-Type: multipart/alternative; 
	boundary="----=_Part_125_1920627128.1597757024833"

------=_Part_125_1920627128.1597757024833
Content-Type: text/plain; charset="UTF-8"

Hi Lee,

Thanks for adding the async login support to upstream. I've ran some tests 
using the iscsiadm built from there
and would like to ask:

1. How is it possible to gather the async logins return status? if 
understood correctly, the proposed way
is to lookup for the connections in the output of "iscsiadm -m session" 
after the async logins were launched.
Currently, I am using a sampling loop, checking at 1 second intervals the 
output of iscsiadm -m session for
presence of expected connections targets and portals and breaks if all were 
found or not found within 
the expected timeout interval, which for the default iscsi settings is 
considered as following: 
(120 seconds timeout per connection login) * (number of connections) / 
(number of workers)
Is there a better way? I am not sure how to gather the error status when a 
connection not able to login in such case.

2. Would it also be supported for non-login-all mode? For "iscsiadm -m node 
-T target -p portal -I interface --login"
I get same timeouts with/without the --no-wait flag, meaning the test waits 
240 seconds in case two connections
are down when using a single node login worker for both cases, so I assume 
it currently doesn't apply for this login mode.

-- Simulating one portal down (2 connections down) with one worker, using 
node login without --no-wait

# python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d 
10.35.18.156 

2020-08-18 15:59:01,874 INFO    (MainThread) Removing prior sessions and 
nodes
2020-08-18 15:59:01,882 INFO    (MainThread) Deleting all nodes
2020-08-18 15:59:01,893 INFO    (MainThread) No active sessions
2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as 
invalid address for target iqn.2003-01.org.vm-18-220.iqn2
2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as 
invalid address for target iqn.2003-01.org.vm-18-220.iqn1
2020-08-18 15:59:01,943 INFO    (MainThread) Discovered connections: 
{('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'), 
('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0'), 
('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'), 
('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1')}
2020-08-18 15:59:01,944 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
2020-08-18 15:59:01,956 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
2020-08-18 15:59:01,968 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
2020-08-18 15:59:01,980 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
2020-08-18 15:59:01,995 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=False)
2020-08-18 16:01:02,019 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=False)
2020-08-18 16:01:02,028 ERROR   (MainThread) Job failed: Command 
['iscsiadm', '--mode', 'node', '--targetname', 
'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', 
'0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default, 
target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0]' err='iscsiadm: 
Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, 
portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection 
timed out)\niscsiadm: Could not log into all portals'
2020-08-18 16:03:02,045 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=False)
2020-08-18 16:03:02,053 ERROR   (MainThread) Job failed: Command 
['iscsiadm', '--mode', 'node', '--targetname', 
'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', 
'0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default, 
target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0]' err='iscsiadm: 
Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, 
portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection 
timed out)\niscsiadm: Could not log into all portals'
2020-08-18 16:03:02,321 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=False)
2020-08-18 16:03:02,695 INFO    (MainThread) Connecting completed in 
240.752s

-- Simulating one portal down (2 connections down) with one worker, using 
node login with --no-wait

# python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d 
10.35.18.156  --nowait

2020-08-18 16:16:05,802 INFO    (MainThread) Removing prior sessions and 
nodes
2020-08-18 16:16:06,075 INFO    (MainThread) Deleting all nodes
2020-08-18 16:16:06,090 INFO    (MainThread) No active sessions
2020-08-18 16:16:06,130 INFO    (MainThread) Setting 10.35.18.156 as 
invalid address for target iqn.2003-01.org.vm-18-220.iqn2
2020-08-18 16:16:06,131 INFO    (MainThread) Setting 10.35.18.156 as 
invalid address for target iqn.2003-01.org.vm-18-220.iqn1
2020-08-18 16:16:06,131 INFO    (MainThread) Discovered connections: 
{('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'), 
('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'), 
('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1'), 
('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0')}
2020-08-18 16:16:06,132 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
2020-08-18 16:16:06,147 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
2020-08-18 16:16:06,162 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
2020-08-18 16:16:06,176 INFO    (MainThread) Adding node for target 
iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
2020-08-18 16:16:06,190 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=True)
2020-08-18 16:16:06,324 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=True)
2020-08-18 16:18:06,351 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=True)
2020-08-18 16:18:06,356 ERROR   (MainThread) Job failed: Command 
['iscsiadm', '--mode', 'node', '--targetname', 
'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', 
'0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to 
[iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal: 
0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target: 
iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiator 
reported error (8 - connection timed out)\niscsiadm: Could not log into all 
portals'
2020-08-18 16:18:06,589 INFO    (login_0) Login to target 
iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=True)
2020-08-18 16:20:06,643 ERROR   (MainThread) Job failed: Command 
['iscsiadm', '--mode', 'node', '--targetname', 
'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', 
'0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to 
[iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 
0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target: 
iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator 
reported error (8 - connection timed out)\niscsiadm: Could not log into all 
portals'
2020-08-18 16:20:06,656 INFO    (MainThread) Connecting completed in 
240.524s


Thanks for helping out,
Amit

On Thursday, August 13, 2020 at 5:32:26 PM UTC+3 nir...@gmail.com wrote:

> On Thu, Aug 13, 2020 at 1:32 AM The Lee-Man <leeman...@gmail.com> wrote:
>
>> On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:
>>>
>>> ...
>>>
>>>>
>>>>> The other option is to use one login-all call without parallelism, but 
>>>>> that would have other implications on our system to consider.
>>>>>
>>>>
>>>> Such as? 
>>>>
>>> As mentioned above,  unless there is a way to specify a list of targets 
>>> and portals for a single login (all) command.
>>>
>>>>
>>>>> Your answers would be helpful once again.
>>>>>
>>>>> Thanks,
>>>>> - Amit
>>>>>
>>>>>
>>>> You might be interested in a new feature I'm considering adding to 
>>>> iscsiadm to do asynchronous logins. In other words, the iscsiadm could, 
>>>> when asked to login to one or more targets, would send the login request to 
>>>> the targets, then return success immediately. It is then up to the end-user 
>>>> (you in this case) to poll for when the target actually shows up.
>>>>
>>> This sounds very interesting, but probably will be available to us only 
>>> on later RHEL releases, if chosen to be delivered downstream.
>>> At present it seems we can only use the login-all way or logins in a 
>>> dedicated threads per target-portal.
>>>
>>>>
>>>> ...
>>>>
>>>
>> So you can only use RH-released packages?
>>
>
> Yes, we support RHEL and CentOS now.
>  
>
>> That's fine with me, but I'm asking you to test a new feature and see if 
>> it fixes your problems. If it helped, I would add up here in this repo, and 
>> redhat would get it by default when they updated, which they do regularly, 
>> as does my company (SUSE).
>>
>
> Sure, this is how we do things. But using async login is something we can 
> use only
> in a future version, maybe RHEL/CentOS 8.4, since it is probably too late 
> for 8.3.
>
> Just as a "side" point, I wouldn't attack your problem by manually listing 
>> nodes to login to.
>>
>> It does seem as if you assume you are the only iscsi user on the system. 
>> In that case, you have complete control of the node database. Assuming your 
>> targets do not change, you can set up your node database once and never 
>> have to discover iscsi targets again. Of course if targets change, you can 
>> update your node database, but only as needed, i.e. full discovery 
>> shouldn't be needed each time you start up, unless targets are really 
>> changing all the time in your environment.
>>
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
> And of course we cannot prevent an admin from changing the database for 
> their
> valid reasons.
>
> So being able to login/logout to specific nodes is very attractive for us. 
>
> If you do discovery and have nodes in your node database you don't like, 
>> just remove them.
>>
>
> We can do this, adding and removing nodes we added, but we cannot remove 
> nodes
> we did not add. If may be something added by os-brik or an administrator.
>
> Another point about your scheme: you are setting each node's 'startup' to 
>> 'manual', but manual is the default, and since you seem to own the 
>> open-iscsi code on this system, you can ensure the default is manual. 
>> Perhaps because this is a test?
>>
>
> No, this is our production setup. I don't know why we specify manual, maybe
> this was not the default in 2009 when this code was written, or maybe the 
> intent
> was to be explicit about it, in case the default would change?
>
> Do you see a problem with explicit node.startup=manual?
>  
>
>>
>> So, again, I ask you if you will test the async login code? It's really 
>> not much extra work -- just a "git clone" and a "make install" (mostly). If 
>> not, the async feature may make it into iscsiadm any way, some time soon, 
>> but I'd really prefer other testers for this feature before that.
>>
>
> Sure, we will test this.
>
> Having async login API sounds great, but my concern is how do we wait for 
> the 
> login result. For example with systemd many things became asynchronous, but
> there is no good way to wait for things. Few examples are mounts that can 
> fail
> after the mount command completes, because after the completion udev 
> changes
> permissions on the mount, or multipath devices, which may not be ready 
> after
> connecting to a target.
>
> Can you elaborate on how you would wait for the login result, and how 
> would you
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
> This runs on every host in a cluster, and the results are returned to 
> oVirt engine,
> managing the cluster.
>
> Cheers,
> Nir
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1f197a6d-cf7c-4723-a3f1-1d98b3d98520n%40googlegroups.com.

------=_Part_125_1920627128.1597757024833
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Lee,</div><div><br></div><div>Thanks for adding the async login sup=
port to upstream. I've ran some tests using the iscsiadm built from there<b=
r></div><div>and would like to ask:</div><div><br></div><div>1. How is it p=
ossible to gather the async logins return status? if understood correctly, =
the proposed way</div><div>is to lookup for the connections in the output o=
f "iscsiadm -m session" after the async logins were launched.</div><div>Cur=
rently, I am using a sampling loop, checking at 1 second intervals the outp=
ut of iscsiadm -m session for</div><div>presence of expected connections ta=
rgets and portals and breaks if all were found or not found within <br></di=
v><div>the expected timeout interval, which for the default iscsi settings =
is considered as following: <br></div><div>(120 seconds timeout per connect=
ion login) * (number of connections) / (number of workers)</div><div>Is the=
re a better way? I am not sure how to gather the error status when a connec=
tion not able to login in such case.<br></div><div><br></div><div>2. Would =
it also be supported for non-login-all mode? For "iscsiadm -m node -T targe=
t -p portal -I interface --login"</div><div>I get same timeouts with/withou=
t the --no-wait flag, meaning the test waits 240 seconds in case two connec=
tions</div><div>are down when using a single node login worker for both cas=
es, so I assume it currently doesn't apply for this login mode.<br></div><d=
iv><br></div><div>-- Simulating one portal down (2 connections down) with o=
ne worker, using node login without --no-wait<br></div><div><br></div><div>=
# python3 ./initiator.py&nbsp; -j 1 -i 10.35.18.220 10.35.18.156&nbsp; -d 1=
0.35.18.156 <br></div><div><br></div><div>2020-08-18 15:59:01,874 INFO&nbsp=
;&nbsp;&nbsp; (MainThread) Removing prior sessions and nodes<br>2020-08-18 =
15:59:01,882 INFO&nbsp;&nbsp;&nbsp; (MainThread) Deleting all nodes<br>2020=
-08-18 15:59:01,893 INFO&nbsp;&nbsp;&nbsp; (MainThread) No active sessions<=
br>2020-08-18 15:59:01,943 INFO&nbsp;&nbsp;&nbsp; (MainThread) Setting 10.3=
5.18.156 as invalid address for target iqn.2003-01.org.vm-18-220.iqn2<br>20=
20-08-18 15:59:01,943 INFO&nbsp;&nbsp;&nbsp; (MainThread) Setting 10.35.18.=
156 as invalid address for target iqn.2003-01.org.vm-18-220.iqn1<br>2020-08=
-18 15:59:01,943 INFO&nbsp;&nbsp;&nbsp; (MainThread) Discovered connections=
: {('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'), ('iqn.2003-01.org.vm-=
18-220.iqn2', '0.0.0.0:0,0'), ('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.=
220:3260,1'), ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1')}<br=
>2020-08-18 15:59:01,944 INFO&nbsp;&nbsp;&nbsp; (MainThread) Adding node fo=
r target iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0<br>2020-08-18 15=
:59:01,956 INFO&nbsp;&nbsp;&nbsp; (MainThread) Adding node for target iqn.2=
003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0<br>2020-08-18 15:59:01,968 INF=
O&nbsp;&nbsp;&nbsp; (MainThread) Adding node for target iqn.2003-01.org.vm-=
18-220.iqn2 portal 10.35.18.220:3260,1<br>2020-08-18 15:59:01,980 INFO&nbsp=
;&nbsp;&nbsp; (MainThread) Adding node for target iqn.2003-01.org.vm-18-220=
.iqn1 portal 10.35.18.220:3260,1<br>2020-08-18 15:59:01,995 INFO&nbsp;&nbsp=
;&nbsp; (login_0) Login to target iqn.2003-01.org.vm-18-220.iqn1 portal 0.0=
.0.0:0,0 (nowait=3DFalse)<br>2020-08-18 16:01:02,019 INFO&nbsp;&nbsp;&nbsp;=
 (login_0) Login to target iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,=
0 (nowait=3DFalse)<br>2020-08-18 16:01:02,028 ERROR&nbsp;&nbsp; (MainThread=
) Job failed: Command ['iscsiadm', '--mode', 'node', '--targetname', 'iqn.2=
003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '0.0.0.0:=
0,0', '--login'] failed rc=3D8 out=3D'Logging in to [iface: default, target=
: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0]' err=3D'iscsiadm: Coul=
d not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, por=
tal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection timed =
out)\niscsiadm: Could not log into all portals'<br>2020-08-18 16:03:02,045 =
INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iqn.2003-01.org.vm-18-220.=
iqn2 portal 10.35.18.220:3260,1 (nowait=3DFalse)<br>2020-08-18 16:03:02,053=
 ERROR&nbsp;&nbsp; (MainThread) Job failed: Command ['iscsiadm', '--mode', =
'node', '--targetname', 'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'd=
efault', '--portal', '0.0.0.0:0,0', '--login'] failed rc=3D8 out=3D'Logging=
 in to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0=
.0.0,0]' err=3D'iscsiadm: Could not login to [iface: default, target: iqn.2=
003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator reporte=
d error (8 - connection timed out)\niscsiadm: Could not log into all portal=
s'<br>2020-08-18 16:03:02,321 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to tar=
get iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=3DFal=
se)<br>2020-08-18 16:03:02,695 INFO&nbsp;&nbsp;&nbsp; (MainThread) Connecti=
ng completed in 240.752s<br></div><div><br></div><div>-- Simulating one por=
tal down (2 connections down) with one worker, using node login with --no-w=
ait</div><div><br></div><div># python3 ./initiator.py&nbsp; -j 1 -i 10.35.1=
8.220 10.35.18.156&nbsp; -d 10.35.18.156&nbsp; --nowait</div><div><br></div=
><div>2020-08-18 16:16:05,802 INFO&nbsp;&nbsp;&nbsp; (MainThread) Removing =
prior sessions and nodes<br>2020-08-18 16:16:06,075 INFO&nbsp;&nbsp;&nbsp; =
(MainThread) Deleting all nodes<br>2020-08-18 16:16:06,090 INFO&nbsp;&nbsp;=
&nbsp; (MainThread) No active sessions<br>2020-08-18 16:16:06,130 INFO&nbsp=
;&nbsp;&nbsp; (MainThread) Setting 10.35.18.156 as invalid address for targ=
et iqn.2003-01.org.vm-18-220.iqn2<br>2020-08-18 16:16:06,131 INFO&nbsp;&nbs=
p;&nbsp; (MainThread) Setting 10.35.18.156 as invalid address for target iq=
n.2003-01.org.vm-18-220.iqn1<br>2020-08-18 16:16:06,131 INFO&nbsp;&nbsp;&nb=
sp; (MainThread) Discovered connections: {('iqn.2003-01.org.vm-18-220.iqn2'=
, '10.35.18.220:3260,1'), ('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0')=
, ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1'), ('iqn.2003-01.=
org.vm-18-220.iqn2', '0.0.0.0:0,0')}<br>2020-08-18 16:16:06,132 INFO&nbsp;&=
nbsp;&nbsp; (MainThread) Adding node for target iqn.2003-01.org.vm-18-220.i=
qn2 portal 10.35.18.220:3260,1<br>2020-08-18 16:16:06,147 INFO&nbsp;&nbsp;&=
nbsp; (MainThread) Adding node for target iqn.2003-01.org.vm-18-220.iqn1 po=
rtal 0.0.0.0:0,0<br>2020-08-18 16:16:06,162 INFO&nbsp;&nbsp;&nbsp; (MainThr=
ead) Adding node for target iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.=
220:3260,1<br>2020-08-18 16:16:06,176 INFO&nbsp;&nbsp;&nbsp; (MainThread) A=
dding node for target iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0<br>=
2020-08-18 16:16:06,190 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iq=
n.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=3DTrue)<br>=
2020-08-18 16:16:06,324 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iq=
n.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=3DTrue)<br>2020-08-=
18 16:18:06,351 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iqn.2003-0=
1.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=3DTrue)<br>2020-08-=
18 16:18:06,356 ERROR&nbsp;&nbsp; (MainThread) Job failed: Command ['iscsia=
dm', '--mode', 'node', '--targetname', 'iqn.2003-01.org.vm-18-220.iqn1', '-=
-interface', 'default', '--portal', '0.0.0.0:0,0', '--login', '--no_wait'] =
failed rc=3D8 out=3D'Logging in to [iface: default, target: iqn.2003-01.org=
.vm-18-220.iqn1, portal: 0.0.0.0,0]' err=3D'iscsiadm: Could not login to [i=
face: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\=
niscsiadm: initiator reported error (8 - connection timed out)\niscsiadm: C=
ould not log into all portals'<br>2020-08-18 16:18:06,589 INFO&nbsp;&nbsp;&=
nbsp; (login_0) Login to target iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0=
.0:0,0 (nowait=3DTrue)<br>2020-08-18 16:20:06,643 ERROR&nbsp;&nbsp; (MainTh=
read) Job failed: Command ['iscsiadm', '--mode', 'node', '--targetname', 'i=
qn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '0.0.=
0.0:0,0', '--login', '--no_wait'] failed rc=3D8 out=3D'Logging in to [iface=
: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0]' err=
=3D'iscsiadm: Could not login to [iface: default, target: iqn.2003-01.org.v=
m-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 -=
 connection timed out)\niscsiadm: Could not log into all portals'<br>2020-0=
8-18 16:20:06,656 INFO&nbsp;&nbsp;&nbsp; (MainThread) Connecting completed =
in 240.524s<br><br></div><div><br></div><div>Thanks for helping out,</div><=
div>Amit<br></div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D=
"gmail_attr">On Thursday, August 13, 2020 at 5:32:26 PM UTC+3 nir...@gmail.=
com wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0=
 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><d=
iv dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 13, 2020 at 1:32 AM The Lee-Man=
 &lt;<a href data-email-masked rel=3D"nofollow">leeman...@gmail.com</a>&gt;=
 wrote:<br></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">On Sunday, Augus=
t 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:<blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">...<br><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div><br></div><div>The other option is to use one=
 login-all call without parallelism, but that would have other implications=
 on our system to consider.<br></div></blockquote><div><br></div></div><div=
 dir=3D"ltr"><div>Such as? <br></div></div></blockquote><div>As mentioned a=
bove,=C2=A0 unless there is a way to specify a list of targets and portals =
for a single login (all) command.<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div></div></div><div dir=3D"ltr"><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div><br>Your answers would be =
helpful once again.</div><div><br>Thanks,<br>- Amit</div><br></blockquote><=
div><br></div></div><div dir=3D"ltr"><div>You might be interested in a new =
feature I&#39;m considering adding to iscsiadm to do asynchronous logins. I=
n other words, the iscsiadm could, when asked to login to one or more targe=
ts, would send the login request to the targets, then return success immedi=
ately. It is then up to the end-user (you in this case) to poll for when th=
e target actually shows up.</div></div></blockquote><div>This sounds very i=
nteresting, but probably will be available to us only on later RHEL release=
s, if chosen to be delivered downstream.</div><div>At present it seems we c=
an only use the login-all way or logins in a dedicated threads per target-p=
ortal.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div><br></div>...</div></blockquote></div></blockquote><div><br><=
/div><div>So you can only use RH-released packages?</div></div></blockquote=
><div><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><di=
v>Yes, we support RHEL and CentOS now.</div></div></div><div dir=3D"ltr"><d=
iv class=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>That&#39;s fine with me, but I&#39;m=
 asking you to test a new feature and see if it fixes your problems. If it =
helped, I would add up here in this repo, and redhat would get it by defaul=
t when they updated, which they do regularly, as does my company (SUSE).</d=
iv></div></blockquote><div><br></div></div></div><div dir=3D"ltr"><div clas=
s=3D"gmail_quote"><div>Sure, this is how we do things. But using async logi=
n is something we can use only</div><div>in a future version, maybe RHEL/Ce=
ntOS 8.4, since it is probably too late for 8.3.</div></div></div><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div><br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>Just as a &quot;side&quot; =
point, I wouldn&#39;t attack your problem by manually listing nodes to logi=
n to.</div><div><br></div><div>It does seem as if you assume you are the on=
ly iscsi user on the system. In that case, you have complete control of the=
 node database. Assuming your targets do not change, you can set up your no=
de database once and never have to discover iscsi targets again. Of course =
if targets change, you can update your node database, but only as needed, i=
.e. full discovery shouldn&#39;t be needed each time you start up, unless t=
argets are really changing all the time in your environment.</div></div></b=
lockquote><div><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_q=
uote"><div>This is partly true. in oVirt, there is the vdsm daemon managing=
 iSCSI connections.</div><div>so usually only vdsm manipulates the database=
.</div><div><br></div><div>However even in vdsm we have an issue when we at=
tach a Cinder based volume.</div><div>In this case we use os-brick (<a href=
=3D"https://github.com/openstack/os-brick" target=3D"_blank" rel=3D"nofollo=
w" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps=
://github.com/openstack/os-brick&amp;source=3Dgmail&amp;ust=3D1597842049039=
000&amp;usg=3DAFQjCNGgEkYm666_qsnJb2G9T-erMyEEnA">https://github.com/openst=
ack/os-brick</a>) to attach the</div><div>volume, and it will discover and =
login to the volume.</div><div><br></div><div>And of course we cannot preve=
nt an admin from changing the database for their</div><div>valid reasons.</=
div><div><br></div><div>So being able to login/logout to specific nodes is =
very attractive for us.=C2=A0</div></div></div><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>If you do discovery and have nodes in your nod=
e database you don&#39;t like, just remove them.</div></div></blockquote><d=
iv><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>W=
e can do this, adding and removing nodes we added, but we cannot remove nod=
es</div><div>we did not add. If may be something added by os-brik or an adm=
inistrator.</div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><d=
iv><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Another point about your scheme: you are setting each node&#39;s =
&#39;startup&#39; to &#39;manual&#39;, but manual is the default, and since=
 you seem to own the open-iscsi code on this system, you can ensure the def=
ault is manual. Perhaps because this is a test?</div></div></blockquote><di=
v><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>No=
, this is our production setup. I don&#39;t know why we specify manual, may=
be</div><div>this was not the default in 2009 when this code was written, o=
r maybe the intent</div><div>was to be explicit about it, in case the defau=
lt would change?</div><div><br></div><div>Do you see a problem with explici=
t node.startup=3Dmanual?</div></div></div><div dir=3D"ltr"><div class=3D"gm=
ail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div><br></div><div>So, again, I ask you if you will te=
st the async login code? It&#39;s really not much extra work -- just a &quo=
t;git clone&quot; and a &quot;make install&quot; (mostly). If not, the asyn=
c feature may make it into iscsiadm any way, some time soon, but I&#39;d re=
ally prefer other testers for this feature before that.<br></div></div></bl=
ockquote><div><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_qu=
ote"><div>Sure, we will test this.</div><div><br></div><div>Having async lo=
gin API sounds great, but my concern is how do we wait for the=C2=A0</div><=
div>login result. For example with systemd many things became asynchronous,=
 but</div><div>there is no good way to wait for things. Few examples are mo=
unts that can fail</div><div>after the mount command completes, because aft=
er the completion udev changes</div><div>permissions on the mount, or multi=
path devices, which may not be ready after</div><div>connecting to a target=
.</div><div><br></div><div>Can you elaborate on how you would wait for the =
login result, and how would you</div><div>get login error for reporting up =
the stack? How can you handle timeouts? This is=C2=A0</div><div>easy to do =
when using synchronous API with threads.</div><div><br></div><div>From our =
point of view we want to be able to:</div><div><br></div><div>=C2=A0 =C2=A0=
 start async login process</div><div>=C2=A0 =C2=A0 for result in login resu=
lts:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 add result to response</div><div=
>=C2=A0 =C2=A0 return response with connection details</div><div><br></div>=
<div>This runs on every host in a cluster, and the results are returned to =
oVirt engine,</div><div>managing the cluster.</div><div><br></div><div>Chee=
rs,</div><div>Nir</div></div></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1f197a6d-cf7c-4723-a3f1-1d98b3d98520n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/1f197a6d-cf7c-4723-a3f1-1d98b3d98520n%40googlegroups.com</a>.=
<br />

------=_Part_125_1920627128.1597757024833--

------=_Part_124_272163213.1597757024833--

