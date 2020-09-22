Return-Path: <open-iscsi+bncBCLI32UIRUJRB752U35QKGQETZT7QZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F198273B13
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Sep 2020 08:45:21 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id g8sf10521310pfq.15
        for <lists+open-iscsi@lfdr.de>; Mon, 21 Sep 2020 23:45:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600757119; cv=pass;
        d=google.com; s=arc-20160816;
        b=zXjpjVL+DGHPRIPzV6YAAcJxKNtzMcEwWYXfTFkEUGjq7welAfPzGVhz2bY939FGcc
         XsEVA2Jka/6WppcREERhpAmcKvpJ1DbzvgsVxAwknGFyV9PWNjp8ldKZI+JSscgWMtyG
         soVqHHfPVrt9sWo2P8wTUMdkmn/lLpyK7lEggZRZA/i+2FxsgfN5N262QWu3QgfajONi
         NGIA4abFME+S7VztmYzdxubW2fellDTo5R+YhI7PCLEUo0TordF97/pAFrqdk1k9AMVu
         KUbLcfJKHQwomM3ZGGgC9iQG6nuQ6ck2OF1sfZxUJ/9/zHtR3pmJYOFRbocVBV2YuN2r
         gJbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :references:in-reply-to:message-id:to:from:date:sender
         :dkim-signature;
        bh=JfIfWgKmpZjBMW+OKZNPbFfsfWPSxLba2Ql725dYy/o=;
        b=CyaUPR7KQWu/1DWrbR7yr1woB8aDCFgl1aeZMR+peoc5JDdtO2uDSOALIx88XEqmXb
         78OxCwisMNg3pnMM25QbU2c63X199fxQ8YraAHnGESAZdj9vkCSZzRzc7Hk97r2o/+VO
         jnJSh/PT9VgwnCOTZUXUPJ60c559qG7fTHc08ZNpvcsO5KZmCnuzyUrOCJXFckB3ENX7
         g26p3jK1RorDOwVSQ/6Ml8RVaTccdQCFAHyolURF+ihua5EbnaQ2g5ucrmg6ECLPqheI
         FZKEbOECfnvSKYZr9idSnFKUbOGI+5paR/twlXmkbzCkQay4cSosrHO92xOUGcs94Yrt
         +rMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ihpCBqLB;
       spf=pass (google.com: domain of abawer@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JfIfWgKmpZjBMW+OKZNPbFfsfWPSxLba2Ql725dYy/o=;
        b=kY4qmbJdN3LSlXRw18IhCVwnOWS4rFrZWzF5n2B1a2lJTT+FlvMyKKNCA6OUSirmAi
         zDmTRu/IlNdXIlVnmCQxHv0M3uEd8A6Eptg7eHMSK3fgUJXBK3HImt7DCMk+7IiRABmv
         Zt/ouKgeuBs0048LJiQRDnSmU13eQlI3lGnJxU4VMDfIgFqnIIxmnWK2vnNKSkL+3PJ5
         ++WW4yQRBQ4bbk7rvMhfvBLNbsBgixhvPA/vuon5/M+UDN6wz0g/+mPM/6rk+KwE13fj
         kclyC/I9vvEosRXRZ6NVGbr4+u0db6QhIePnI93OqGnUm2mEj8B22y4SO0OS+JZ9lNt/
         q2rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JfIfWgKmpZjBMW+OKZNPbFfsfWPSxLba2Ql725dYy/o=;
        b=ek2ZK56+37ayyYA55ot+/bJnEBy1VG+nW+fp7DWwCpQcJohwkxzAvyGE25ohRCrkAc
         UYZR51h582EoNtI7vFCKoftZUD3a+TL47M/o+bXGqVlT0PIiFHFu3iTTLH0MgqSuIYXN
         tgJDLhkX9e3sQGYaSSzb3u1lMs7rDnnP9ZzW+LosLpUiyRP5Gx4E48hahWuAhWuND5US
         X9he6uKZXYLnNzlgkLE+QcNm53QwuYdsFzM5rUr8Ime3unaTa/00ADB7Yy5LvYRwv/xR
         8tszyufo6WRi9HkWQhTqIypcA6A+dgrlr74RuZdBNrqScvgZQVtKUZiPVmkQtnk98sn/
         zWkw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531LG3ppH4Pq1khMZFkSy1rVfcDbkmVf0KbhusjIL3W1CvvcF3DF
	ai/H8OJv0sXWzJiRGlN/Qpg=
X-Google-Smtp-Source: ABdhPJyk29L8sgJOw3TJW5pKO6UvFVBz+NeWit9x/3E+UPTkCizWevLnlrCPJyHPg2p874LvJvoz3Q==
X-Received: by 2002:a17:902:bd07:b029:d1:f42c:454f with SMTP id p7-20020a170902bd07b02900d1f42c454fmr3470280pls.54.1600757119736;
        Mon, 21 Sep 2020 23:45:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:45:: with SMTP id 66ls5436164pfa.1.gmail; Mon, 21 Sep
 2020 23:45:19 -0700 (PDT)
X-Received: by 2002:a63:1657:: with SMTP id 23mr2552189pgw.168.1600757119032;
        Mon, 21 Sep 2020 23:45:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600757119; cv=none;
        d=google.com; s=arc-20160816;
        b=KJ38k8QS1bEIU2ITxn5hitP3SeYl/nFltLIdHu8eB5u1rLoOcbIwBJ5qvUSjHh/bnH
         yEHUNgAp9asobtILxRuhdCr2G81+ibnA2urQlBKhi6J8K6YBj0UWCGxYRNtkm5PWSXdJ
         HwexiYFSfURpP9RubZFzzvGcoD7T74RLj5lJIoYJLWEOx5jk5q7/xBC71N3unXDC+5++
         0p7QExCHqKWD45X7tajLLG836JdGq14seVlz1ptmRJRx2+flHRT2kUm7iYzMZgPYJ7sp
         L8J+UTMjqw7RVfjYppuefuMVi/vzEzrA3EFWSU0mE07MdaeqaJM/U2EjHSnXXOuqnw5d
         lDhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=pD3FNFwoSLsGXzhlA/vZ9IVBJevldHCT2+WE/oCatr8=;
        b=06zdq6dIdSLtpDywKEJvJjGk5HMx1gQoyL2p8AVUBJes0smL4D8AC7b3cYZfE5RxOH
         HU57xmiZ5hia6sxTxcgK/Tg66cRIMNQSd1lyX959pmOSxPwsbW99kdq41E2um+OW494d
         53B9HwVnYlR46K9EVjXlcYFNVzqZeoyUmoov8A5zO0Oyh19vato0VHJGWlxDPxroE0Zj
         rbit5YsZCKxXreOZs8GTTMM7BM9HYTLFQNNrSkYLjvsjS2QCMY8X8Pxb5ALiIYZFugAj
         jHJhTLcYISG831+VbaZJC/5EI5EM+EbTP6MRagIBCVxTWvej0Z5u9lnSzH0NdEhHT7k+
         cAWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ihpCBqLB;
       spf=pass (google.com: domain of abawer@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id u9si256578pgg.0.2020.09.21.23.45.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 23:45:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-lkcXtE_WOQenGskfImtlyA-1; Tue, 22 Sep 2020 02:45:02 -0400
X-MC-Unique: lkcXtE_WOQenGskfImtlyA-1
Received: by mail-oo1-f69.google.com with SMTP id t23so8137365ooc.13
        for <open-iscsi@googlegroups.com>; Mon, 21 Sep 2020 23:45:02 -0700 (PDT)
X-Received: by 2002:a05:6830:1603:: with SMTP id g3mr1955808otr.328.1600757101697;
        Mon, 21 Sep 2020 23:45:01 -0700 (PDT)
X-Received: by 2002:a05:6830:1603:: with SMTP id g3mr1955799otr.328.1600757101426;
        Mon, 21 Sep 2020 23:45:01 -0700 (PDT)
Date: Mon, 21 Sep 2020 23:45:00 -0700 (PDT)
From: Amit Bawer <abawer@redhat.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <d02edd0c-7a27-426c-9ead-be3a3a646e2dn@googlegroups.com>
In-Reply-To: <ade44206-3ba3-4e03-89fb-20deefa3c0dfn@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
 <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
 <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
 <CAMr-obscx-wmXs8Y2Y1NzWjcgc_vY-hOaYho50hhQiaJVeN9Qw@mail.gmail.com>
 <1f197a6d-cf7c-4723-a3f1-1d98b3d98520n@googlegroups.com>
 <ade44206-3ba3-4e03-89fb-20deefa3c0dfn@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_134_1656417437.1600757100589"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ihpCBqLB;
       spf=pass (google.com: domain of abawer@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=abawer@redhat.com;
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

------=_Part_134_1656417437.1600757100589
Content-Type: multipart/alternative; 
	boundary="----=_Part_135_850847294.1600757100589"

------=_Part_135_850847294.1600757100589
Content-Type: text/plain; charset="UTF-8"



On Tuesday, September 15, 2020 at 11:21:37 PM UTC+3 The Lee-Man wrote:

> I believe the best way to check for the async session to complete is to 
> look for results. Does a new disc show up? That sort of high-level 
> algorithm will be the best, because it waits for what you actually care 
> about.
>
> If you'd like to wait until iscsiadm says the session is complete, that 
> seems like it'd be possible to, but be advised there is a finite amount of 
> time between when (1) the session connects, (2) iscsiadm will show the 
> session as valid, and (3) when udev and friends in the operating system 
> instantiate the disc.
>
 
I think it could be helpful, because it would avoid the sampling loop 
having to check for the the established sessions and it could also provide 
the error information in case the attempt has failed (such as login 
timeout).


> By the way, how are you simulating one target is down? Just curious.
>
 
Maybe its oversimplified, but when listing portal address as down for the 
test script, it would replace it with a non-responsive address 
"0.0.0.0:0,0" in the resulting discovery list
so any login attempt to it would be timed out.


> Lastly, yes, I could add code to iscsiadm to make "iscsiadm -m node -T 
> <iqn> ... --login --no_wait" work. Would you be willing to test it (in a 
> branch) if I did?
>
 
Yes, I could modify the test used so far to check this mod as well. 

Thanks.

>
> On Tuesday, August 18, 2020 at 6:23:45 AM UTC-7 aba...@redhat.com wrote:
>
>> Hi Lee,
>>
>> Thanks for adding the async login support to upstream. I've ran some 
>> tests using the iscsiadm built from there
>> and would like to ask:
>>
>> 1. How is it possible to gather the async logins return status? if 
>> understood correctly, the proposed way
>> is to lookup for the connections in the output of "iscsiadm -m session" 
>> after the async logins were launched.
>> Currently, I am using a sampling loop, checking at 1 second intervals the 
>> output of iscsiadm -m session for
>> presence of expected connections targets and portals and breaks if all 
>> were found or not found within 
>> the expected timeout interval, which for the default iscsi settings is 
>> considered as following: 
>> (120 seconds timeout per connection login) * (number of connections) / 
>> (number of workers)
>> Is there a better way? I am not sure how to gather the error status when 
>> a connection not able to login in such case.
>>
>> 2. Would it also be supported for non-login-all mode? For "iscsiadm -m 
>> node -T target -p portal -I interface --login"
>> I get same timeouts with/without the --no-wait flag, meaning the test 
>> waits 240 seconds in case two connections
>> are down when using a single node login worker for both cases, so I 
>> assume it currently doesn't apply for this login mode.
>>
>> -- Simulating one portal down (2 connections down) with one worker, using 
>> node login without --no-wait
>>
>> # python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d 
>> 10.35.18.156 
>>
>> 2020-08-18 15:59:01,874 INFO    (MainThread) Removing prior sessions and 
>> nodes
>> 2020-08-18 15:59:01,882 INFO    (MainThread) Deleting all nodes
>> 2020-08-18 15:59:01,893 INFO    (MainThread) No active sessions
>> 2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as 
>> invalid address for target iqn.2003-01.org.vm-18-220.iqn2
>> 2020-08-18 15:59:01,943 INFO    (MainThread) Setting 10.35.18.156 as 
>> invalid address for target iqn.2003-01.org.vm-18-220.iqn1
>> 2020-08-18 15:59:01,943 INFO    (MainThread) Discovered connections: 
>> {('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'), 
>> ('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0'), 
>> ('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'), 
>> ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1')}
>> 2020-08-18 15:59:01,944 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
>> 2020-08-18 15:59:01,956 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
>> 2020-08-18 15:59:01,968 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
>> 2020-08-18 15:59:01,980 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
>> 2020-08-18 15:59:01,995 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=False)
>> 2020-08-18 16:01:02,019 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=False)
>> 2020-08-18 16:01:02,028 ERROR   (MainThread) Job failed: Command 
>> ['iscsiadm', '--mode', 'node', '--targetname', 
>> 'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '
>> 0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default, 
>> target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0]' err='iscsiadm: 
>> Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, 
>> portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection 
>> timed out)\niscsiadm: Could not log into all portals'
>> 2020-08-18 16:03:02,045 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=False)
>> 2020-08-18 16:03:02,053 ERROR   (MainThread) Job failed: Command 
>> ['iscsiadm', '--mode', 'node', '--targetname', 
>> 'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '
>> 0.0.0.0:0,0', '--login'] failed rc=8 out='Logging in to [iface: default, 
>> target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0]' err='iscsiadm: 
>> Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, 
>> portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connection 
>> timed out)\niscsiadm: Could not log into all portals'
>> 2020-08-18 16:03:02,321 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=False)
>> 2020-08-18 16:03:02,695 INFO    (MainThread) Connecting completed in 
>> 240.752s
>>
>> -- Simulating one portal down (2 connections down) with one worker, using 
>> node login with --no-wait
>>
>> # python3 ./initiator.py  -j 1 -i 10.35.18.220 10.35.18.156  -d 
>> 10.35.18.156  --nowait
>>
>> 2020-08-18 16:16:05,802 INFO    (MainThread) Removing prior sessions and 
>> nodes
>> 2020-08-18 16:16:06,075 INFO    (MainThread) Deleting all nodes
>> 2020-08-18 16:16:06,090 INFO    (MainThread) No active sessions
>> 2020-08-18 16:16:06,130 INFO    (MainThread) Setting 10.35.18.156 as 
>> invalid address for target iqn.2003-01.org.vm-18-220.iqn2
>> 2020-08-18 16:16:06,131 INFO    (MainThread) Setting 10.35.18.156 as 
>> invalid address for target iqn.2003-01.org.vm-18-220.iqn1
>> 2020-08-18 16:16:06,131 INFO    (MainThread) Discovered connections: 
>> {('iqn.2003-01.org.vm-18-220.iqn2', '10.35.18.220:3260,1'), 
>> ('iqn.2003-01.org.vm-18-220.iqn1', '0.0.0.0:0,0'), 
>> ('iqn.2003-01.org.vm-18-220.iqn1', '10.35.18.220:3260,1'), 
>> ('iqn.2003-01.org.vm-18-220.iqn2', '0.0.0.0:0,0')}
>> 2020-08-18 16:16:06,132 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1
>> 2020-08-18 16:16:06,147 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0
>> 2020-08-18 16:16:06,162 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1
>> 2020-08-18 16:16:06,176 INFO    (MainThread) Adding node for target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0
>> 2020-08-18 16:16:06,190 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 10.35.18.220:3260,1 (nowait=True)
>> 2020-08-18 16:16:06,324 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 0.0.0.0:0,0 (nowait=True)
>> 2020-08-18 16:18:06,351 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn1 portal 10.35.18.220:3260,1 (nowait=True)
>> 2020-08-18 16:18:06,356 ERROR   (MainThread) Job failed: Command 
>> ['iscsiadm', '--mode', 'node', '--targetname', 
>> 'iqn.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '
>> 0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to 
>> [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal: 
>> 0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target: 
>> iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiator 
>> reported error (8 - connection timed out)\niscsiadm: Could not log into all 
>> portals'
>> 2020-08-18 16:18:06,589 INFO    (login_0) Login to target 
>> iqn.2003-01.org.vm-18-220.iqn2 portal 0.0.0.0:0,0 (nowait=True)
>> 2020-08-18 16:20:06,643 ERROR   (MainThread) Job failed: Command 
>> ['iscsiadm', '--mode', 'node', '--targetname', 
>> 'iqn.2003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '
>> 0.0.0.0:0,0', '--login', '--no_wait'] failed rc=8 out='Logging in to 
>> [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 
>> 0.0.0.0,0]' err='iscsiadm: Could not login to [iface: default, target: 
>> iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator 
>> reported error (8 - connection timed out)\niscsiadm: Could not log into all 
>> portals'
>> 2020-08-18 16:20:06,656 INFO    (MainThread) Connecting completed in 
>> 240.524s
>>
>>
>> Thanks for helping out,
>> Amit
>>
>> On Thursday, August 13, 2020 at 5:32:26 PM UTC+3 nir...@gmail.com wrote:
>>
>>> On Thu, Aug 13, 2020 at 1:32 AM The Lee-Man <leeman...@gmail.com> wrote:
>>>
>>>> On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:
>>>>>
>>>>> ...
>>>>>
>>>>>>
>>>>>>> The other option is to use one login-all call without parallelism, 
>>>>>>> but that would have other implications on our system to consider.
>>>>>>>
>>>>>>
>>>>>> Such as? 
>>>>>>
>>>>> As mentioned above,  unless there is a way to specify a list of 
>>>>> targets and portals for a single login (all) command.
>>>>>
>>>>>>
>>>>>>> Your answers would be helpful once again.
>>>>>>>
>>>>>>> Thanks,
>>>>>>> - Amit
>>>>>>>
>>>>>>>
>>>>>> You might be interested in a new feature I'm considering adding to 
>>>>>> iscsiadm to do asynchronous logins. In other words, the iscsiadm could, 
>>>>>> when asked to login to one or more targets, would send the login request to 
>>>>>> the targets, then return success immediately. It is then up to the end-user 
>>>>>> (you in this case) to poll for when the target actually shows up.
>>>>>>
>>>>> This sounds very interesting, but probably will be available to us 
>>>>> only on later RHEL releases, if chosen to be delivered downstream.
>>>>> At present it seems we can only use the login-all way or logins in a 
>>>>> dedicated threads per target-portal.
>>>>>
>>>>>>
>>>>>> ...
>>>>>>
>>>>>
>>>> So you can only use RH-released packages?
>>>>
>>>
>>> Yes, we support RHEL and CentOS now.
>>>  
>>>
>>>> That's fine with me, but I'm asking you to test a new feature and see 
>>>> if it fixes your problems. If it helped, I would add up here in this repo, 
>>>> and redhat would get it by default when they updated, which they do 
>>>> regularly, as does my company (SUSE).
>>>>
>>>
>>> Sure, this is how we do things. But using async login is something we 
>>> can use only
>>> in a future version, maybe RHEL/CentOS 8.4, since it is probably too 
>>> late for 8.3.
>>>
>>> Just as a "side" point, I wouldn't attack your problem by manually 
>>>> listing nodes to login to.
>>>>
>>>> It does seem as if you assume you are the only iscsi user on the 
>>>> system. In that case, you have complete control of the node database. 
>>>> Assuming your targets do not change, you can set up your node database once 
>>>> and never have to discover iscsi targets again. Of course if targets 
>>>> change, you can update your node database, but only as needed, i.e. full 
>>>> discovery shouldn't be needed each time you start up, unless targets are 
>>>> really changing all the time in your environment.
>>>>
>>>
>>> This is partly true. in oVirt, there is the vdsm daemon managing iSCSI 
>>> connections.
>>> so usually only vdsm manipulates the database.
>>>
>>> However even in vdsm we have an issue when we attach a Cinder based 
>>> volume.
>>> In this case we use os-brick (https://github.com/openstack/os-brick) to 
>>> attach the
>>> volume, and it will discover and login to the volume.
>>>
>>> And of course we cannot prevent an admin from changing the database for 
>>> their
>>> valid reasons.
>>>
>>> So being able to login/logout to specific nodes is very attractive for 
>>> us. 
>>>
>>> If you do discovery and have nodes in your node database you don't like, 
>>>> just remove them.
>>>>
>>>
>>> We can do this, adding and removing nodes we added, but we cannot remove 
>>> nodes
>>> we did not add. If may be something added by os-brik or an administrator.
>>>
>>> Another point about your scheme: you are setting each node's 'startup' 
>>>> to 'manual', but manual is the default, and since you seem to own the 
>>>> open-iscsi code on this system, you can ensure the default is manual. 
>>>> Perhaps because this is a test?
>>>>
>>>
>>> No, this is our production setup. I don't know why we specify manual, 
>>> maybe
>>> this was not the default in 2009 when this code was written, or maybe 
>>> the intent
>>> was to be explicit about it, in case the default would change?
>>>
>>> Do you see a problem with explicit node.startup=manual?
>>>  
>>>
>>>>
>>>> So, again, I ask you if you will test the async login code? It's really 
>>>> not much extra work -- just a "git clone" and a "make install" (mostly). If 
>>>> not, the async feature may make it into iscsiadm any way, some time soon, 
>>>> but I'd really prefer other testers for this feature before that.
>>>>
>>>
>>> Sure, we will test this.
>>>
>>> Having async login API sounds great, but my concern is how do we wait 
>>> for the 
>>> login result. For example with systemd many things became asynchronous, 
>>> but
>>> there is no good way to wait for things. Few examples are mounts that 
>>> can fail
>>> after the mount command completes, because after the completion udev 
>>> changes
>>> permissions on the mount, or multipath devices, which may not be ready 
>>> after
>>> connecting to a target.
>>>
>>> Can you elaborate on how you would wait for the login result, and how 
>>> would you
>>> get login error for reporting up the stack? How can you handle timeouts? 
>>> This is 
>>> easy to do when using synchronous API with threads.
>>>
>>> From our point of view we want to be able to:
>>>
>>>     start async login process
>>>     for result in login results:
>>>         add result to response
>>>     return response with connection details
>>>
>>> This runs on every host in a cluster, and the results are returned to 
>>> oVirt engine,
>>> managing the cluster.
>>>
>>> Cheers,
>>> Nir
>>>
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d02edd0c-7a27-426c-9ead-be3a3a646e2dn%40googlegroups.com.

------=_Part_135_850847294.1600757100589
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">O=
n Tuesday, September 15, 2020 at 11:21:37 PM UTC+3 The Lee-Man wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-=
left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div>I believe the =
best way to check for the async session to complete is to look for results.=
 Does a new disc show up? That sort of high-level algorithm will be the bes=
t, because it waits for what you actually care about.</div><div><br></div><=
div>If you'd like to wait until iscsiadm says the session is complete, that=
 seems like it'd be possible to, but be advised there is a finite amount of=
 time between when (1) the session connects, (2) iscsiadm will show the ses=
sion as valid, and (3) when udev and friends in the operating system instan=
tiate the disc.</div></blockquote><div>&nbsp;</div><div>I think it could be=
 helpful, because it would avoid the sampling loop having to check for the =
the established sessions and it could also provide the error information in=
 case the attempt has failed (such as login timeout).</div><div><br></div><=
blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left:=
 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div><br></div><div>By t=
he way, how are you simulating one target is down? Just curious.</div></blo=
ckquote><div>&nbsp;</div><div>Maybe its oversimplified, but when listing po=
rtal address as down for the test script, it would replace it with a non-re=
sponsive address "0.0.0.0:0,0" in the resulting discovery list</div><div>so=
 any login attempt to it would be timed out.</div><div><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px soli=
d rgb(204, 204, 204); padding-left: 1ex;"><div><br></div><div>Lastly, yes, =
I could add code to iscsiadm to make "iscsiadm -m node -T &lt;iqn&gt; ... -=
-login --no_wait" work. Would you be willing to test it (in a branch) if I =
did?<br></div></blockquote><div>&nbsp;</div><div>Yes, I could modify the te=
st used so far to check this mod as well. <br></div><div><br></div><div>Tha=
nks.<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8e=
x; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On =
Tuesday, August 18, 2020 at 6:23:45 AM UTC-7 <a href=3D"" data-email-masked=
=3D"" rel=3D"nofollow">aba...@redhat.com</a> wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div>Hi Lee,</div><div><br></div><div>Thanks =
for adding the async login support to upstream. I've ran some tests using t=
he iscsiadm built from there<br></div><div>and would like to ask:</div><div=
><br></div><div>1. How is it possible to gather the async logins return sta=
tus? if understood correctly, the proposed way</div><div>is to lookup for t=
he connections in the output of "iscsiadm -m session" after the async login=
s were launched.</div><div>Currently, I am using a sampling loop, checking =
at 1 second intervals the output of iscsiadm -m session for</div><div>prese=
nce of expected connections targets and portals and breaks if all were foun=
d or not found within <br></div><div>the expected timeout interval, which f=
or the default iscsi settings is considered as following: <br></div><div>(1=
20 seconds timeout per connection login) * (number of connections) / (numbe=
r of workers)</div><div>Is there a better way? I am not sure how to gather =
the error status when a connection not able to login in such case.<br></div=
><div><br></div><div>2. Would it also be supported for non-login-all mode? =
For "iscsiadm -m node -T target -p portal -I interface --login"</div><div>I=
 get same timeouts with/without the --no-wait flag, meaning the test waits =
240 seconds in case two connections</div><div>are down when using a single =
node login worker for both cases, so I assume it currently doesn't apply fo=
r this login mode.<br></div><div><br></div><div>-- Simulating one portal do=
wn (2 connections down) with one worker, using node login without --no-wait=
<br></div><div><br></div><div># python3 ./initiator.py&nbsp; -j 1 -i 10.35.=
18.220 10.35.18.156&nbsp; -d 10.35.18.156 <br></div><div><br></div><div>202=
0-08-18 15:59:01,874 INFO&nbsp;&nbsp;&nbsp; (MainThread) Removing prior ses=
sions and nodes<br>2020-08-18 15:59:01,882 INFO&nbsp;&nbsp;&nbsp; (MainThre=
ad) Deleting all nodes<br>2020-08-18 15:59:01,893 INFO&nbsp;&nbsp;&nbsp; (M=
ainThread) No active sessions<br>2020-08-18 15:59:01,943 INFO&nbsp;&nbsp;&n=
bsp; (MainThread) Setting 10.35.18.156 as invalid address for target iqn.20=
03-01.org.vm-18-220.iqn2<br>2020-08-18 15:59:01,943 INFO&nbsp;&nbsp;&nbsp; =
(MainThread) Setting 10.35.18.156 as invalid address for target iqn.2003-01=
.org.vm-18-220.iqn1<br>2020-08-18 15:59:01,943 INFO&nbsp;&nbsp;&nbsp; (Main=
Thread) Discovered connections: {('iqn.2003-01.org.vm-18-220.iqn1', '<a hre=
f=3D"http://0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirect=
url=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;sour=
ce=3Dgmail&amp;ust=3D1600842906608000&amp;usg=3DAFQjCNGW0JBrtlsvKBRt1zcoX7C=
o4lbfDw">0.0.0.0:0</a>,0'), ('iqn.2003-01.org.vm-18-220.iqn2', '<a href=3D"=
http://0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=
=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=
=3Dgmail&amp;ust=3D1600842906608000&amp;usg=3DAFQjCNGW0JBrtlsvKBRt1zcoX7Co4=
lbfDw">0.0.0.0:0</a>,0'), ('iqn.2003-01.org.vm-18-220.iqn2', '<a href=3D"ht=
tp://10.35.18.220:3260" rel=3D"nofollow" target=3D"_blank" data-saferedirec=
turl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260=
&amp;source=3Dgmail&amp;ust=3D1600842906608000&amp;usg=3DAFQjCNEsY9GB-Ezg3O=
0Y9yA5ngSzJGmiWQ">10.35.18.220:3260</a>,1'), ('iqn.2003-01.org.vm-18-220.iq=
n1', '<a href=3D"http://10.35.18.220:3260" rel=3D"nofollow" target=3D"_blan=
k" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp:=
//10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600842906609000&amp;usg=
=3DAFQjCNFPcYvtF2jw-rk8GNHdg5Sd2X950g">10.35.18.220:3260</a>,1')}<br>2020-0=
8-18 15:59:01,944 INFO&nbsp;&nbsp;&nbsp; (MainThread) Adding node for targe=
t iqn.2003-01.org.vm-18-220.iqn1 portal <a href=3D"http://0.0.0.0:0" rel=3D=
"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com=
/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D16008429=
06609000&amp;usg=3DAFQjCNExWgg82FtZ6hSPjZzFzpHextR1mg">0.0.0.0:0</a>,0<br>2=
020-08-18 15:59:01,956 INFO&nbsp;&nbsp;&nbsp; (MainThread) Adding node for =
target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://0.0.0.0:0" r=
el=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.googl=
e.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D160=
0842906609000&amp;usg=3DAFQjCNExWgg82FtZ6hSPjZzFzpHextR1mg">0.0.0.0:0</a>,0=
<br>2020-08-18 15:59:01,968 INFO&nbsp;&nbsp;&nbsp; (MainThread) Adding node=
 for target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://10.35.1=
8.220:3260" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"http=
s://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=
=3Dgmail&amp;ust=3D1600842906609000&amp;usg=3DAFQjCNFPcYvtF2jw-rk8GNHdg5Sd2=
X950g">10.35.18.220:3260</a>,1<br>2020-08-18 15:59:01,980 INFO&nbsp;&nbsp;&=
nbsp; (MainThread) Adding node for target iqn.2003-01.org.vm-18-220.iqn1 po=
rtal <a href=3D"http://10.35.18.220:3260" rel=3D"nofollow" target=3D"_blank=
" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp:/=
/10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600842906609000&amp;usg=3D=
AFQjCNFPcYvtF2jw-rk8GNHdg5Sd2X950g">10.35.18.220:3260</a>,1<br>2020-08-18 1=
5:59:01,995 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iqn.2003-01.or=
g.vm-18-220.iqn1 portal <a href=3D"http://0.0.0.0:0" rel=3D"nofollow" targe=
t=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp=
;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D1600842906609000&amp;usg=
=3DAFQjCNExWgg82FtZ6hSPjZzFzpHextR1mg">0.0.0.0:0</a>,0 (nowait=3DFalse)<br>=
2020-08-18 16:01:02,019 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iq=
n.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://0.0.0.0:0" rel=3D"nof=
ollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url=
?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D160084290660=
9000&amp;usg=3DAFQjCNExWgg82FtZ6hSPjZzFzpHextR1mg">0.0.0.0:0</a>,0 (nowait=
=3DFalse)<br>2020-08-18 16:01:02,028 ERROR&nbsp;&nbsp; (MainThread) Job fai=
led: Command ['iscsiadm', '--mode', 'node', '--targetname', 'iqn.2003-01.or=
g.vm-18-220.iqn1', '--interface', 'default', '--portal', '<a href=3D"http:/=
/0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"http=
s://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&=
amp;ust=3D1600842906610000&amp;usg=3DAFQjCNFDUaffdYJP9pgmAzW5lBOd8y2hUA">0.=
0.0.0:0</a>,0', '--login'] failed rc=3D8 out=3D'Logging in to [iface: defau=
lt, target: iqn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0]' err=3D'iscs=
iadm: Could not login to [iface: default, target: iqn.2003-01.org.vm-18-220=
.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8 - connect=
ion timed out)\niscsiadm: Could not log into all portals'<br>2020-08-18 16:=
03:02,045 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iqn.2003-01.org.=
vm-18-220.iqn2 portal <a href=3D"http://10.35.18.220:3260" rel=3D"nofollow"=
 target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3D=
en&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600842906=
610000&amp;usg=3DAFQjCNGcUFe0VsFrxrvOf_Z7HNEKPJJ-1g">10.35.18.220:3260</a>,=
1 (nowait=3DFalse)<br>2020-08-18 16:03:02,053 ERROR&nbsp;&nbsp; (MainThread=
) Job failed: Command ['iscsiadm', '--mode', 'node', '--targetname', 'iqn.2=
003-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '<a href=
=3D"http://0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirectu=
rl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;sourc=
e=3Dgmail&amp;ust=3D1600842906610000&amp;usg=3DAFQjCNFDUaffdYJP9pgmAzW5lBOd=
8y2hUA">0.0.0.0:0</a>,0', '--login'] failed rc=3D8 out=3D'Logging in to [if=
ace: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0]' e=
rr=3D'iscsiadm: Could not login to [iface: default, target: iqn.2003-01.org=
.vm-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator reported error (8=
 - connection timed out)\niscsiadm: Could not log into all portals'<br>2020=
-08-18 16:03:02,321 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iqn.20=
03-01.org.vm-18-220.iqn1 portal <a href=3D"http://10.35.18.220:3260" rel=3D=
"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com=
/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D=
1600842906610000&amp;usg=3DAFQjCNGcUFe0VsFrxrvOf_Z7HNEKPJJ-1g">10.35.18.220=
:3260</a>,1 (nowait=3DFalse)<br>2020-08-18 16:03:02,695 INFO&nbsp;&nbsp;&nb=
sp; (MainThread) Connecting completed in 240.752s<br></div><div><br></div><=
div>-- Simulating one portal down (2 connections down) with one worker, usi=
ng node login with --no-wait</div><div><br></div><div># python3 ./initiator=
.py&nbsp; -j 1 -i 10.35.18.220 10.35.18.156&nbsp; -d 10.35.18.156&nbsp; --n=
owait</div><div><br></div><div>2020-08-18 16:16:05,802 INFO&nbsp;&nbsp;&nbs=
p; (MainThread) Removing prior sessions and nodes<br>2020-08-18 16:16:06,07=
5 INFO&nbsp;&nbsp;&nbsp; (MainThread) Deleting all nodes<br>2020-08-18 16:1=
6:06,090 INFO&nbsp;&nbsp;&nbsp; (MainThread) No active sessions<br>2020-08-=
18 16:16:06,130 INFO&nbsp;&nbsp;&nbsp; (MainThread) Setting 10.35.18.156 as=
 invalid address for target iqn.2003-01.org.vm-18-220.iqn2<br>2020-08-18 16=
:16:06,131 INFO&nbsp;&nbsp;&nbsp; (MainThread) Setting 10.35.18.156 as inva=
lid address for target iqn.2003-01.org.vm-18-220.iqn1<br>2020-08-18 16:16:0=
6,131 INFO&nbsp;&nbsp;&nbsp; (MainThread) Discovered connections: {('iqn.20=
03-01.org.vm-18-220.iqn2', '<a href=3D"http://10.35.18.220:3260" rel=3D"nof=
ollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url=
?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600=
842906610000&amp;usg=3DAFQjCNGcUFe0VsFrxrvOf_Z7HNEKPJJ-1g">10.35.18.220:326=
0</a>,1'), ('iqn.2003-01.org.vm-18-220.iqn1', '<a href=3D"http://0.0.0.0:0"=
 rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.goo=
gle.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D1=
600842906610000&amp;usg=3DAFQjCNFDUaffdYJP9pgmAzW5lBOd8y2hUA">0.0.0.0:0</a>=
,0'), ('iqn.2003-01.org.vm-18-220.iqn1', '<a href=3D"http://10.35.18.220:32=
60" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.=
google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&=
amp;ust=3D1600842906610000&amp;usg=3DAFQjCNGcUFe0VsFrxrvOf_Z7HNEKPJJ-1g">10=
.35.18.220:3260</a>,1'), ('iqn.2003-01.org.vm-18-220.iqn2', '<a href=3D"htt=
p://0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"h=
ttps://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgma=
il&amp;ust=3D1600842906611000&amp;usg=3DAFQjCNEBllfDg9ssCS1FO3M1TKbFcPrxRA"=
>0.0.0.0:0</a>,0')}<br>2020-08-18 16:16:06,132 INFO&nbsp;&nbsp;&nbsp; (Main=
Thread) Adding node for target iqn.2003-01.org.vm-18-220.iqn2 portal <a hre=
f=3D"http://10.35.18.220:3260" rel=3D"nofollow" target=3D"_blank" data-safe=
redirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.2=
20:3260&amp;source=3Dgmail&amp;ust=3D1600842906611000&amp;usg=3DAFQjCNHksyy=
2-ZCt2pYvEPAIf3KG8ltFcw">10.35.18.220:3260</a>,1<br>2020-08-18 16:16:06,147=
 INFO&nbsp;&nbsp;&nbsp; (MainThread) Adding node for target iqn.2003-01.org=
.vm-18-220.iqn1 portal <a href=3D"http://0.0.0.0:0" rel=3D"nofollow" target=
=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;=
q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D1600842906611000&amp;usg=
=3DAFQjCNEBllfDg9ssCS1FO3M1TKbFcPrxRA">0.0.0.0:0</a>,0<br>2020-08-18 16:16:=
06,162 INFO&nbsp;&nbsp;&nbsp; (MainThread) Adding node for target iqn.2003-=
01.org.vm-18-220.iqn1 portal <a href=3D"http://10.35.18.220:3260" rel=3D"no=
follow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/ur=
l?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D160=
0842906611000&amp;usg=3DAFQjCNHksyy2-ZCt2pYvEPAIf3KG8ltFcw">10.35.18.220:32=
60</a>,1<br>2020-08-18 16:16:06,176 INFO&nbsp;&nbsp;&nbsp; (MainThread) Add=
ing node for target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http:/=
/0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"http=
s://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&=
amp;ust=3D1600842906611000&amp;usg=3DAFQjCNEBllfDg9ssCS1FO3M1TKbFcPrxRA">0.=
0.0.0:0</a>,0<br>2020-08-18 16:16:06,190 INFO&nbsp;&nbsp;&nbsp; (login_0) L=
ogin to target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://10.3=
5.18.220:3260" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"h=
ttps://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;sour=
ce=3Dgmail&amp;ust=3D1600842906611000&amp;usg=3DAFQjCNHksyy2-ZCt2pYvEPAIf3K=
G8ltFcw">10.35.18.220:3260</a>,1 (nowait=3DTrue)<br>2020-08-18 16:16:06,324=
 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iqn.2003-01.org.vm-18-220=
.iqn1 portal <a href=3D"http://0.0.0.0:0" rel=3D"nofollow" target=3D"_blank=
" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp:/=
/0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D1600842906611000&amp;usg=3DAFQjCNEB=
llfDg9ssCS1FO3M1TKbFcPrxRA">0.0.0.0:0</a>,0 (nowait=3DTrue)<br>2020-08-18 1=
6:18:06,351 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to target iqn.2003-01.or=
g.vm-18-220.iqn1 portal <a href=3D"http://10.35.18.220:3260" rel=3D"nofollo=
w" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=
=3Den&amp;q=3Dhttp://10.35.18.220:3260&amp;source=3Dgmail&amp;ust=3D1600842=
906611000&amp;usg=3DAFQjCNHksyy2-ZCt2pYvEPAIf3KG8ltFcw">10.35.18.220:3260</=
a>,1 (nowait=3DTrue)<br>2020-08-18 16:18:06,356 ERROR&nbsp;&nbsp; (MainThre=
ad) Job failed: Command ['iscsiadm', '--mode', 'node', '--targetname', 'iqn=
.2003-01.org.vm-18-220.iqn1', '--interface', 'default', '--portal', '<a hre=
f=3D"http://0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirect=
url=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;sour=
ce=3Dgmail&amp;ust=3D1600842906611000&amp;usg=3DAFQjCNEBllfDg9ssCS1FO3M1TKb=
FcPrxRA">0.0.0.0:0</a>,0', '--login', '--no_wait'] failed rc=3D8 out=3D'Log=
ging in to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn1, portal:=
 0.0.0.0,0]' err=3D'iscsiadm: Could not login to [iface: default, target: i=
qn.2003-01.org.vm-18-220.iqn1, portal: 0.0.0.0,0].\niscsiadm: initiator rep=
orted error (8 - connection timed out)\niscsiadm: Could not log into all po=
rtals'<br>2020-08-18 16:18:06,589 INFO&nbsp;&nbsp;&nbsp; (login_0) Login to=
 target iqn.2003-01.org.vm-18-220.iqn2 portal <a href=3D"http://0.0.0.0:0" =
rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.goog=
le.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;source=3Dgmail&amp;ust=3D16=
00842906612000&amp;usg=3DAFQjCNHb7ubB486gZLzozGPghKLdds-VlQ">0.0.0.0:0</a>,=
0 (nowait=3DTrue)<br>2020-08-18 16:20:06,643 ERROR&nbsp;&nbsp; (MainThread)=
 Job failed: Command ['iscsiadm', '--mode', 'node', '--targetname', 'iqn.20=
03-01.org.vm-18-220.iqn2', '--interface', 'default', '--portal', '<a href=
=3D"http://0.0.0.0:0" rel=3D"nofollow" target=3D"_blank" data-saferedirectu=
rl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://0.0.0.0:0&amp;sourc=
e=3Dgmail&amp;ust=3D1600842906612000&amp;usg=3DAFQjCNHb7ubB486gZLzozGPghKLd=
ds-VlQ">0.0.0.0:0</a>,0', '--login', '--no_wait'] failed rc=3D8 out=3D'Logg=
ing in to [iface: default, target: iqn.2003-01.org.vm-18-220.iqn2, portal: =
0.0.0.0,0]' err=3D'iscsiadm: Could not login to [iface: default, target: iq=
n.2003-01.org.vm-18-220.iqn2, portal: 0.0.0.0,0].\niscsiadm: initiator repo=
rted error (8 - connection timed out)\niscsiadm: Could not log into all por=
tals'<br>2020-08-18 16:20:06,656 INFO&nbsp;&nbsp;&nbsp; (MainThread) Connec=
ting completed in 240.524s<br><br></div><div><br></div><div>Thanks for help=
ing out,</div><div>Amit<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"auto" class=3D"gmail_attr">On Thursday, August 13, 2020 at 5:32:26 PM UTC+=
3 <a rel=3D"nofollow">nir...@gmail.com</a> wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 1=
3, 2020 at 1:32 AM The Lee-Man &lt;<a rel=3D"nofollow">leeman...@gmail.com<=
/a>&gt; wrote:<br></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">On Sunday=
, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:<blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">...<br><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div><br></div><div>The other option is t=
o use one login-all call without parallelism, but that would have other imp=
lications on our system to consider.<br></div></blockquote><div><br></div><=
/div><div dir=3D"ltr"><div>Such as? <br></div></div></blockquote><div>As me=
ntioned above,&nbsp; unless there is a way to specify a list of targets and=
 portals for a single login (all) command.<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div></div></div><div dir=3D"lt=
r"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br>Your answers =
would be helpful once again.</div><div><br>Thanks,<br>- Amit</div><br></blo=
ckquote><div><br></div></div><div dir=3D"ltr"><div>You might be interested =
in a new feature I'm considering adding to iscsiadm to do asynchronous logi=
ns. In other words, the iscsiadm could, when asked to login to one or more =
targets, would send the login request to the targets, then return success i=
mmediately. It is then up to the end-user (you in this case) to poll for wh=
en the target actually shows up.</div></div></blockquote><div>This sounds v=
ery interesting, but probably will be available to us only on later RHEL re=
leases, if chosen to be delivered downstream.</div><div>At present it seems=
 we can only use the login-all way or logins in a dedicated threads per tar=
get-portal.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div><br></div>...</div></blockquote></div></blockquote><div><=
br></div><div>So you can only use RH-released packages?</div></div></blockq=
uote><div><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"=
><div>Yes, we support RHEL and CentOS now.</div></div></div><div dir=3D"ltr=
"><div class=3D"gmail_quote"><div>&nbsp;</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>That's fine with me, but I'm ask=
ing you to test a new feature and see if it fixes your problems. If it help=
ed, I would add up here in this repo, and redhat would get it by default wh=
en they updated, which they do regularly, as does my company (SUSE).</div><=
/div></blockquote><div><br></div></div></div><div dir=3D"ltr"><div class=3D=
"gmail_quote"><div>Sure, this is how we do things. But using async login is=
 something we can use only</div><div>in a future version, maybe RHEL/CentOS=
 8.4, since it is probably too late for 8.3.</div></div></div><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div><br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Just as a "side" point, I wouldn=
't attack your problem by manually listing nodes to login to.</div><div><br=
></div><div>It does seem as if you assume you are the only iscsi user on th=
e system. In that case, you have complete control of the node database. Ass=
uming your targets do not change, you can set up your node database once an=
d never have to discover iscsi targets again. Of course if targets change, =
you can update your node database, but only as needed, i.e. full discovery =
shouldn't be needed each time you start up, unless targets are really chang=
ing all the time in your environment.</div></div></blockquote><div><br></di=
v></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>This is part=
ly true. in oVirt, there is the vdsm daemon managing iSCSI connections.</di=
v><div>so usually only vdsm manipulates the database.</div><div><br></div><=
div>However even in vdsm we have an issue when we attach a Cinder based vol=
ume.</div><div>In this case we use os-brick (<a href=3D"https://github.com/=
openstack/os-brick" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=
=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://github.com/openstack=
/os-brick&amp;source=3Dgmail&amp;ust=3D1600842906612000&amp;usg=3DAFQjCNExA=
o01ilo7RGktJwFJ1A9qW1vpPQ">https://github.com/openstack/os-brick</a>) to at=
tach the</div><div>volume, and it will discover and login to the volume.</d=
iv><div><br></div><div>And of course we cannot prevent an admin from changi=
ng the database for their</div><div>valid reasons.</div><div><br></div><div=
>So being able to login/logout to specific nodes is very attractive for us.=
&nbsp;</div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>If you do discovery and have nodes in your node database you don't lik=
e, just remove them.</div></div></blockquote><div><br></div></div></div><di=
v dir=3D"ltr"><div class=3D"gmail_quote"><div>We can do this, adding and re=
moving nodes we added, but we cannot remove nodes</div><div>we did not add.=
 If may be something added by os-brik or an administrator.</div></div></div=
><div dir=3D"ltr"><div class=3D"gmail_quote"><div><br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Another point abou=
t your scheme: you are setting each node's 'startup' to 'manual', but manua=
l is the default, and since you seem to own the open-iscsi code on this sys=
tem, you can ensure the default is manual. Perhaps because this is a test?<=
/div></div></blockquote><div><br></div></div></div><div dir=3D"ltr"><div cl=
ass=3D"gmail_quote"><div>No, this is our production setup. I don't know why=
 we specify manual, maybe</div><div>this was not the default in 2009 when t=
his code was written, or maybe the intent</div><div>was to be explicit abou=
t it, in case the default would change?</div><div><br></div><div>Do you see=
 a problem with explicit node.startup=3Dmanual?</div></div></div><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div>&nbsp;</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>So, again,=
 I ask you if you will test the async login code? It's really not much extr=
a work -- just a "git clone" and a "make install" (mostly). If not, the asy=
nc feature may make it into iscsiadm any way, some time soon, but I'd reall=
y prefer other testers for this feature before that.<br></div></div></block=
quote><div><br></div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote=
"><div>Sure, we will test this.</div><div><br></div><div>Having async login=
 API sounds great, but my concern is how do we wait for the&nbsp;</div><div=
>login result. For example with systemd many things became asynchronous, bu=
t</div><div>there is no good way to wait for things. Few examples are mount=
s that can fail</div><div>after the mount command completes, because after =
the completion udev changes</div><div>permissions on the mount, or multipat=
h devices, which may not be ready after</div><div>connecting to a target.</=
div><div><br></div><div>Can you elaborate on how you would wait for the log=
in result, and how would you</div><div>get login error for reporting up the=
 stack? How can you handle timeouts? This is&nbsp;</div><div>easy to do whe=
n using synchronous API with threads.</div><div><br></div><div>From our poi=
nt of view we want to be able to:</div><div><br></div><div>&nbsp; &nbsp; st=
art async login process</div><div>&nbsp; &nbsp; for result in login results=
:</div><div>&nbsp; &nbsp; &nbsp; &nbsp; add result to response</div><div>&n=
bsp; &nbsp; return response with connection details</div><div><br></div><di=
v>This runs on every host in a cluster, and the results are returned to oVi=
rt engine,</div><div>managing the cluster.</div><div><br></div><div>Cheers,=
</div><div>Nir</div></div></div>
</blockquote></div></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/d02edd0c-7a27-426c-9ead-be3a3a646e2dn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/d02edd0c-7a27-426c-9ead-be3a3a646e2dn%40googlegroups.com</a>.=
<br />

------=_Part_135_850847294.1600757100589--

------=_Part_134_1656417437.1600757100589--

