Return-Path: <open-iscsi+bncBCLI32UIRUJRBDMFV74QKGQETWXFNKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E83223D818
	for <lists+open-iscsi@lfdr.de>; Thu,  6 Aug 2020 10:42:55 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id c137sf1877130oig.6
        for <lists+open-iscsi@lfdr.de>; Thu, 06 Aug 2020 01:42:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596703374; cv=pass;
        d=google.com; s=arc-20160816;
        b=pS9VkrERx1GhRTB0EJYSZ4kkGWY+Wcxy2Enf43Jk9ftYOktX1LTao24jt8mMpomnUp
         ymn1skoHM4imzR8a2DcD6U1v9nBvWRf2hLj0Z9ivyt1fvHVntOZdHo3pUNc7M0jBvwq8
         hdeaBj6YdhLXlQtj+7Nk0CfMo1GH73tojQ8cG0uCpzlPWScDFB9EcMyCu0WF/1Uc75ff
         aWKs+6kvFikVgPl7Rqws6Rq3QmmqGaMZSxrkm0qpM7M+DsOLSmtO++9T0MjGsfFu1opj
         VbsdNjRsiL5UJ6aIN50szx07x/SsyN7mxdpN9rhKwpXDrk3YyqB3vYjcG8zyA3z5TnUi
         pgRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :references:in-reply-to:message-id:to:from:date:sender
         :dkim-signature;
        bh=Hg6ldwnVsT5+xaMJlMwJ6iCXxqTkNt0DPNyGa1pZdWo=;
        b=cABMvNRbszI/N2n68rqvU/3bSCFARBiTkjNyUbW23mVLbOvzDpBhLJm/JM4Yn3SIdR
         draCJyTDX4/aAAKQsEjVgIjPsI9ZcMznOY3qNzkx2lUtsZzbWJtY7gnozni+Om88eX+s
         NHTcoh+SfT24tFve+NFyroOeZsVBV+RlnvCPFGT6rx78Rxx/y/I3ZgYU90w2iVSP1aVA
         9H5pVIqrU1nQ1flxqWXEEHH74qxjlaRPumY6mePilCWGNd/4FNUa4QUbxy7pRbkFjBoQ
         hsldlJcramN1pNc336w9GGip5kCSm2YtiX8H/xqchH3WKNlC/NHq9z5XL8DLCDvSvDFy
         9ugw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gTJynq6c;
       spf=pass (google.com: domain of abawer@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Hg6ldwnVsT5+xaMJlMwJ6iCXxqTkNt0DPNyGa1pZdWo=;
        b=rHPNUMLhTeZTmKiHEkDkL6S+DA+Smswuxi5vOvWJOI/wg8FxTBcWTY7KXf+IivvuEy
         SI+2sg0AcarE+F+eRBkc38GTho3ndEwJ9FGKASH/s2VfgIEt/5AaPd9C3fqr/Ay0jQvb
         iqSrNLe5Zh7znv76VAlqg9PxfhjTClNrgGogWQeQPbdud7jznjNj4bVC/9fLyuu+hRvE
         tBJuREsQPQnCIfgYoTwW+PcT3XSn1T2tgJQg+P2jKNKsOROFiC4S1iwB/BTKwJNaTB3a
         P/NwAkvAYOydzja72eQOlLGaB19MNd12zw58qwqHheNFjL/MjdX0tTJE1FyvW0Oe0LsL
         ZgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hg6ldwnVsT5+xaMJlMwJ6iCXxqTkNt0DPNyGa1pZdWo=;
        b=Pb3iilGi6Yax4FC1Q5YBQAJTXZRq+T3WmMRzFScDdWhZRPad8I9dC7IdffEwz7cNWT
         Mc8B8ujdjcC5LNLcspvyKaEPndZrkIpUDFYFh+l/aRWbTG1MUERKMKP/dn0yJM4w9cDb
         GxGB7M1Bs8W2RGgH9ULvc4NCSlcSnJFIhSccMdr4ODBHSY9Qq31nuCX8SU/axuy3fpwt
         UYarRZjegiLwiYEEol1B+VWjkIMg1cW3b+1T6mfBlejJsxAYgVCC8rPyu9L9yUZJKnD0
         e0EHqmGnImmfyi3IOfP7e+8r0cpIXM8NKV8yvwgjyVUZzW0K+JA34LCFEQ4gS1D1BeiG
         DUyQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532jLjQWO9x8ode7mD3jeHDPe85PFoZRO0NYpkxtQyPHQNt/9Kq4
	jwxCdOUDr5ahfLA7GFlaiD8=
X-Google-Smtp-Source: ABdhPJyvfnKrS83MD4K8MgTZ2rREfthhI1xffpsjLInAXUIOX1A5MnmMiZpmKaVz9dZX3UDwoA4Qmw==
X-Received: by 2002:aca:cdc4:: with SMTP id d187mr6094590oig.69.1596703374046;
        Thu, 06 Aug 2020 01:42:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:5911:: with SMTP id t17ls1139547oth.4.gmail; Thu, 06 Aug
 2020 01:42:53 -0700 (PDT)
X-Received: by 2002:a9d:748f:: with SMTP id t15mr6310279otk.371.1596703373691;
        Thu, 06 Aug 2020 01:42:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596703373; cv=none;
        d=google.com; s=arc-20160816;
        b=sNDBgu17Z/eEGbvyncxgSKG5D/Bx5K5Z/DCi4Fe30CVmflQAjXcyRih7eoeHh2A3bo
         82rUfoSKM6fH5q7V14OciGTxTmIAQlxEyiHnTmRznXVR6VzAj0IoCcn4yyYw4dzkhrjN
         dUsCwEL9CR8I97OL7QhrAtkHkNMhhP4xtmC6cD0VWBU9W76tDGqgOFM0Hfkx/YXLMsyv
         L3vAQTTwWat5aZe0tyvDNGe5r824IxzBgLYsHjFfcn0CGkmzE9B+PpPawN5e9aFFbgQT
         sLxgyJZIP4sH6n9jwq7fZnGOPtfbhkgeS+Js+ZOcKSDuPoMpyVz+I7OtRBaGcgZMkrxF
         VZ6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=oXn+XvPE5uzqAPGT6hrhVHYHwxVpxHG52JeM+YavwXY=;
        b=PvABHGwNMf7XzEm7zZuOvwKNFsdphwpFfkqt7ymvb6vOU2JPRBaHL3p3lVNhdqAfLu
         0dKJI4lkan0zTaT3k0IgvquyGi8KEV94aiHYEP63MN+PgPPL9UrJmtCiN+BAdgfwmKxZ
         mzl/JSxcsoWrLWioUM287MrzLX2MpXfz53BlREgSc1H3RY/Z8gLeNiKnjZYRJpMhaBNE
         vfZ6/o4XXDhPaG35P07RrANVGnekzQGB5lS0ii28WGqBjmseSGT+TBsdR5btcNH7uJ1j
         zIBe/fsQ4ZpiAYmJYA8RMIZC5+3+DuYTrKg33qzFe46MQEj3vGozHgtL7McUpucRi2o1
         nRRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gTJynq6c;
       spf=pass (google.com: domain of abawer@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id c199si291045oob.1.2020.08.06.01.42.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 01:42:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-db8vZ5YWNM6NlpIUExAn4Q-1; Thu, 06 Aug 2020 04:42:37 -0400
X-MC-Unique: db8vZ5YWNM6NlpIUExAn4Q-1
Received: by mail-ot1-f70.google.com with SMTP id w14so6905736otj.1
        for <open-iscsi@googlegroups.com>; Thu, 06 Aug 2020 01:42:36 -0700 (PDT)
X-Received: by 2002:aca:55d6:: with SMTP id j205mr6303941oib.0.1596703356327;
        Thu, 06 Aug 2020 01:42:36 -0700 (PDT)
X-Received: by 2002:aca:55d6:: with SMTP id j205mr6303930oib.0.1596703356076;
        Thu, 06 Aug 2020 01:42:36 -0700 (PDT)
Date: Thu, 6 Aug 2020 01:42:35 -0700 (PDT)
From: Amit Bawer <abawer@redhat.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <d8826338-bb99-4623-b4a1-4226cd5139c9n@googlegroups.com>
In-Reply-To: <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_68_1106704957.1596703355128"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gTJynq6c;
       spf=pass (google.com: domain of abawer@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=abawer@redhat.com;
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

------=_Part_68_1106704957.1596703355128
Content-Type: multipart/alternative; 
	boundary="----=_Part_69_619985059.1596703355128"

------=_Part_69_619985059.1596703355128
Content-Type: text/plain; charset="UTF-8"

Another point i'd like to ask about is iSER fallback that we have: 

Currently we check during connection flow if 'iser' is set on 
iscsi_default_ifaces in our configuration. 
If yes, it is first checked if its working on server side by attempting 

iscsiadm -m node -T target -I iser -p portal -l 
iscsiadm -m node -T target -I iser -p portal -u 

If the login/logout worked it is kept as 'iser' instead of 'default' 
interface setup, otherwise it fallbacks to 'default'. 
This is used later for the actual node login. 
The thing is that this check can also waste valuable time when the portal 
is down, is there a way to fallback in the iscsiadm command itself, or 
prefer a specific interface type when trying all/parallel logins for same 
target+portal but with different interfaces types?

On Monday, July 27, 2020 at 8:38:05 PM UTC+3 Amit Bawer wrote:

> Thank you for your answers,
>
> The motivation behind the original question is for reducing the waiting 
> time for different iscsi connections logins
> in case some of the portals are down.
>
> We have a limitation on our RHEV system where all logins to listed iscsi 
> targets should finish within 180 seconds in total.
> In our current implementation we serialize the iscsiadm node logins one 
> after the other,
> each is for specific target and portal. In such scheme, each login would 
> wait 120 seconds in case a portal is down
> (default 15 seconds login timeout * 8 login retries), so if we have 2 or 
> more connections down, we spend at least 240 seconds
> which exceeds our 180 seconds time limit and the entire operation is 
> considered to be failed (RHEV-wise).
>
> Testing [1] different login schemes is summarized in the following table 
> (logins to 2 targets with 2 portals each).
> It seems that either login-all nodes after creating them, as suggested in 
> previous answer here, compares in  total time spent 
> with doing specific node logins concurrently (i.e. running iscsiadm -m 
> node -T target -p portal -I interface  -l in parallel per
> each target-portal), for both cases of all portals being online and when 
> one portal is down:
>
> Login scheme                         Online  Portals             Active 
> Sessions       Total Login Time (seconds)
>
> ---------------------------------------------------------------------------------------------------------------------------------------------------------
>     All at once                            
> 2/2                                 4                               2.1
>     All at once                            1/2                             
>     2                               120.2
>     Serial target-portal              2/2                                
> 4                                8.5
>     Serial target-portal              1/2                                
> 2                                243.5
>     Concurrent target-portal     2/2                               
> 4                                2.1
>     Concurrent target-portal    1/2                                
> 2                               120.1
>
> Using concurrent target-portal logins seems to be preferable in our 
> perspective as it allows to connect only to the
> specified target and portals without the risk of intermixing with other 
> potential iscsi targets.
>
> The node creation part is kept serial in all tests here and we have seen 
> it may result in the iscsi DB issues if run in parallel.
> But using only node logins in parallel doesn't seems to have issues for at 
> least 1000 tries of out tests.
>
> The question to be asked here is it advisable by open-iscsi?
> I know I have been answered already that iscsiadm is racy, but does it 
> applies to node logins as well?
>
> The other option is to use one login-all call without parallelism, but 
> that would have other implications on our system to consider.
>
> Your answers would be helpful once again.
>
> Thanks,
> - Amit
>
> [1] https://gerrit.ovirt.org/#/c/110432
>
>
>
>
>
>
> On Tuesday, June 30, 2020 at 8:02:15 PM UTC+3 The Lee-Man wrote:
>
>> On Tuesday, June 30, 2020 at 8:55:13 AM UTC-7, Donald Williams wrote:
>>>
>>> Hello,
>>>  
>>>  Assuming that devmapper is running and MPIO properly configured you 
>>> want to connect to the same volume/target from different interfaces. 
>>>
>>> However in your case you aren't specifying the same interface. 
>>> "default"  but they are on the same subnet.  Which typically will only use 
>>> the default NIC for that subnet. 
>>>
>>
>> Yes, generally best practices require that each component of your two 
>> paths between initiator and target are redundant. This means that, in the 
>> case of networking, you want to be on different subnets, served by 
>> different switches. You also want two different NICs on your initiator, if 
>> possible, although many times they are on the same card. But, obviously, 
>> some points are not redundant (like your initiator or target). 
>>
>>>
>>> What iSCSI target are you using?  
>>>
>>>  Regards,
>>> Don
>>>
>>> On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer <aba...@redhat.com> wrote:
>>>
>> [Sorry if this message is duplicated, haven't seen it is published in the 
>>>> group]
>>>>
>>>> Hi,
>>>>
>>>> Have couple of question regarding iscsiadm version 6.2.0.878-2:
>>>>
>>>> 1) Is it safe to have concurrent logins to the same target from 
>>>> different interfaces? 
>>>> That is, running the following commands in parallel:
>>>>
>>>> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
>>>> 10.35.18.121:3260,1 -l
>>>> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
>>>> 10.35.18.166:3260,1 -l
>>>>
>>>> 2) Is there a particular reason for the default values of  
>>>> node.conn[0].timeo.login_timeout and node.session.initial_login_
>>>> retry_max?
>>>> According to comment in iscsid.conf it would spend 120 seconds in case 
>>>> of an unreachable interface login:
>>>>
>>>> # The default node.session.initial_login_retry_max is 8 and
>>>> # node.conn[0].timeo.login_timeout is 15 so we have:
>>>> #
>>>> # node.conn[0].timeo.login_timeout * node.session.initial_login_retry_max 
>>>> =
>>>> #                                                               120 
>>>> seconds
>>>>
>>>>
>>>> Thanks,
>>>> Amit
>>>>
>>>> -- 
>>>> You received this message because you are subscribed to the Google 
>>>> Groups "open-iscsi" group.
>>>>
>>> To unsubscribe from this group and stop receiving emails from it, send 
>>>> an email to open-iscsi+...@googlegroups.com.
>>>
>>>
>>>> To view this discussion on the web visit 
>>>> https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com 
>>>> <https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com?utm_medium=email&utm_source=footer>
>>>> .
>>>>
>>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d8826338-bb99-4623-b4a1-4226cd5139c9n%40googlegroups.com.

------=_Part_69_619985059.1596703355128
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><span>Another point i'd like to ask about is iSER fallback that we hav=
e: <br></span></div><div><span><br></span></div><div><span>
Currently we check during connection flow if 'iser' is set on iscsi_default=
_ifaces in=20
our configuration. <br></span></div><div><span>If yes, it is first checked =
if its working on server side by attempting <br></span></div><div><span><br=
></span></div><div><span>iscsiadm -m node -T target -I iser -p portal -l <b=
r></span></div><div><span>iscsiadm -m node -T target -I iser -p portal -u <=
br></span></div><div><span><br></span></div><div><span>If the login/logout =
worked it is kept as 'iser' instead of 'default' interface setup, otherwise
it fallbacks to 'default'. <br></span></div><div><span>This is used later f=
or the actual node login. <br></span></div><div><span>The thing is that thi=
s check can also waste valuable time when the portal is down,
is there a way to fallback in the iscsiadm command itself, or prefer a spec=
ific interface type
when trying all/parallel logins for same target+portal but with different i=
nterfaces types?</span></div><br><div class=3D"gmail_quote"><div dir=3D"aut=
o" class=3D"gmail_attr">On Monday, July 27, 2020 at 8:38:05 PM UTC+3 Amit B=
awer wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 =
0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><=
div>Thank you for your answers,</div><div><br></div><div>The motivation beh=
ind the original question is for reducing the waiting time for different is=
csi connections logins</div><div>in case some of the portals are down.<br><=
br>We have a limitation on our RHEV system where all logins to listed iscsi=
 targets should finish within 180 seconds in total.<br></div><div>In our cu=
rrent implementation we serialize the iscsiadm node logins one after the ot=
her,</div><div>each is for specific target and portal. In such scheme, each=
 login would wait 120 seconds in case a portal is down</div><div>(default 1=
5 seconds login timeout * 8 login retries), so if we have 2 or more connect=
ions down, we spend at least 240 seconds</div><div>which exceeds our 180 se=
conds time limit and the entire operation is considered to be failed (RHEV-=
wise).<br></div><div><br></div><div>Testing [1] different login schemes is =
summarized in the following table (logins to 2 targets with 2 portals each)=
.</div><div>It seems that either login-all nodes after creating them, as su=
ggested in previous answer here, compares in=C2=A0 total time spent <br></d=
iv><div>with doing specific node logins concurrently (i.e. running iscsiadm=
 -m node -T target -p portal -I interface=C2=A0 -l in parallel per</div><di=
v>each target-portal), for both cases of all portals being online and when =
one portal is down:<br></div><div><br></div><div>Login scheme =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Online=C2=A0 Portals =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Active S=
essions =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Total Login Time (seconds)<br>------=
---------------------------------------------------------------------------=
------------------------------------------------------------------------<br=
>=C2=A0=C2=A0=C2=A0 All at once=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2/2=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2.1<br>=C2=A0=C2=A0=C2=
=A0 All at once=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 1/2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 120.2<br>=C2=A0=C2=A0=C2=A0 Serial target-po=
rtal=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 2/2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 8.5<br>=C2=A0=C2=A0=C2=A0 Serial target-portal=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1/2=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 24=
3.5<br>=C2=A0=C2=A0=C2=A0 Concurrent target-portal=C2=A0=C2=A0=C2=A0=C2=A0 =
2/2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2.=
1<br>=C2=A0=C2=A0=C2=A0 Concurrent target-portal=C2=A0=C2=A0=C2=A0 1/2=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 120.1<br=
><br></div><div>Using concurrent target-portal logins seems to be preferabl=
e in our perspective as it allows to connect only to the</div><div>specifie=
d target and portals without the risk of intermixing with other potential i=
scsi targets.</div><div><br></div><div>The node creation part is kept seria=
l in all tests here and we have seen it may result in the iscsi DB issues i=
f run in parallel.</div><div>But using only node logins in parallel doesn&#=
39;t seems to have issues for at least 1000 tries of out tests.</div><div><=
br></div><div>The question to be asked here is it advisable by open-iscsi?<=
/div><div> I know I have been answered already that iscsiadm is racy, but d=
oes it applies to node logins as well?</div><div><br></div><div>The other o=
ption is to use one login-all call without parallelism, but that would have=
 other implications on our system to consider.<br><br>Your answers would be=
 helpful once again.</div><div><br>Thanks,<br>- Amit</div><div><br></div><d=
iv>[1] <a href=3D"https://gerrit.ovirt.org/#/c/110432" target=3D"_blank" re=
l=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&a=
mp;q=3Dhttps://gerrit.ovirt.org/%23/c/110432&amp;source=3Dgmail&amp;ust=3D1=
596789672667000&amp;usg=3DAFQjCNF6vydKtmzNd-4DWk2xDvh-AmFycw">https://gerri=
t.ovirt.org/#/c/110432</a></div><div><br></div><div><br></div><div><br></di=
v><div><br></div><div><br></div><br><div class=3D"gmail_quote"></div><div c=
lass=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Tuesday, Jun=
e 30, 2020 at 8:02:15 PM UTC+3 The Lee-Man wrote:<br></div></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">On Tuesday, June 30, 2020 at 8:55:13 AM UTC-7, Donald Williams wrote:<bl=
ockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello,<div>=C2=A0</di=
v><div>=C2=A0Assuming that devmapper is running and MPIO properly configure=
d you want to connect to the same volume/target from different interfaces.=
=C2=A0</div><div><br></div><div>However in your case you aren&#39;t specify=
ing=C2=A0the same interface. &quot;default&quot;=C2=A0 but they are on the =
same subnet.=C2=A0 Which typically will only use the default NIC for that s=
ubnet.=C2=A0</div></div></blockquote><div><br></div></div><div dir=3D"ltr">=
<div>Yes, generally best practices require that each component of your two =
paths between initiator and target are redundant. This means that, in the c=
ase of networking, you want to be on different subnets, served by different=
 switches. You also want two different NICs on your initiator, if possible,=
 although many times they are on the same card. But, obviously, some points=
 are not redundant (like your initiator or target). <br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #c=
cc solid;padding-left:1ex"></blockquote></div><div dir=3D"ltr"><blockquote =
class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>What iSCSI=
 target are you using?=C2=A0=C2=A0</div><div><br></div><div>=C2=A0Regards,<=
/div><div>Don</div></div><br></blockquote></div><div dir=3D"ltr"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><div dir=3D"ltr">O=
n Tue, Jun 30, 2020 at 9:00 AM Amit Bawer &lt;<a rel=3D"nofollow">aba...@re=
dhat.com</a>&gt; wrote:<br></div></div></blockquote></div><div dir=3D"ltr">=
<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div><div><span></span></div></di=
v><span><span><span><span><span><span><span><span><div><span>[Sorry if this=
 message is duplicated, haven&#39;t seen it is published in the group]</spa=
n></div><div><span><br><span dir=3D"ltr"></span> </span></div></span></span=
></span></span></span></span></span></span><span><span><span><span><span><s=
pan><span><span><div><span></span></div></span></span></span></span></span>=
</span></span></span><div><div><div><div dir=3D"ltr"><div>Hi,</div><div><br=
></div><div>Have couple of question regarding iscsiadm version 6.2.0.878-2:=
</div><div><br></div><div>1) Is it safe to have concurrent logins to the sa=
me target from different interfaces? <br></div><div>That is, running the fo=
llowing commands in parallel:</div><div><br></div><div>iscsiadm -m node -T =
iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http://10.35.18.121=
:3260" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://w=
ww.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.121:3260&amp;source=3Dgma=
il&amp;ust=3D1596789672667000&amp;usg=3DAFQjCNFbdiRsyF-x63Dgy42WUYfUyicyxA"=
>10.35.18.121:3260</a>,1 -l</div><div>iscsiadm -m node -T iqn.2003-01.org.v=
m-18-198.iqn2 -I default -p <a href=3D"http://10.35.18.166:3260" rel=3D"nof=
ollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url=
?hl=3Den&amp;q=3Dhttp://10.35.18.166:3260&amp;source=3Dgmail&amp;ust=3D1596=
789672667000&amp;usg=3DAFQjCNGlpM_apAoFcqOylw-qyYhG5PP2iQ">10.35.18.166:326=
0</a>,1 -l</div><div><br></div><div>2) Is there a particular reason for the=
 default values of=C2=A0 node.conn[0].timeo.login_<span></span>timeout and =
node.session.initial_login_<span></span>retry_max?</div><div>According to c=
omment in iscsid.conf it would spend 120 seconds in case of an unreachable =
interface login:</div><div><br></div><div># The default node.session.initia=
l_login_<span></span>retry_max is 8 and<br># node.conn[0].timeo.login_<span=
></span>timeout is 15 so we have:<br>#<br># node.conn[0].timeo.login_<span>=
</span>timeout * node.session.initial_login_<span></span>retry_max =3D<br>#=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 120 s=
econds<br></div><div><br></div><div><br></div><div>Thanks,</div><div> Amit<=
/div></div></div></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br></blockquote></div></blockquote></div></blo=
ckquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);padding-=
left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a rel=3D"nofollow">open-iscsi+...@googlegroups.com</a>.</blockquot=
e></div></blockquote></div></blockquote></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" rel=3D"nofollow" target=3D"=
_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3D=
https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da=
1e19bbn%2540googlegroups.com?utm_medium%3Demail%26utm_source%3Dfooter&amp;s=
ource=3Dgmail&amp;ust=3D1596789672668000&amp;usg=3DAFQjCNHGjuM_EkZ1jN0DRazO=
gRt_v32Bbg">https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4=
-9e6f-93e8da1e19bbn%40googlegroups.com</a>.<br>
</blockquote></div></blockquote></div></blockquote></div></blockquote></div=
>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/d8826338-bb99-4623-b4a1-4226cd5139c9n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/d8826338-bb99-4623-b4a1-4226cd5139c9n%40googlegroups.com</a>.=
<br />

------=_Part_69_619985059.1596703355128--

------=_Part_68_1106704957.1596703355128--

