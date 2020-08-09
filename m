Return-Path: <open-iscsi+bncBCLI32UIRUJRBOHXYD4QKGQEYHIS5VQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F9423FFA8
	for <lists+open-iscsi@lfdr.de>; Sun,  9 Aug 2020 20:08:57 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id b6sf2046167uak.8
        for <lists+open-iscsi@lfdr.de>; Sun, 09 Aug 2020 11:08:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596996536; cv=pass;
        d=google.com; s=arc-20160816;
        b=cubNbuOgtDGjNYKM/4/vBTYrhXiVn/Hqi6P5AvH2jl2KP0PKWJ/IuR3JpkqHMgvWH7
         4Ik2mrGKkL/DsProUt19SRzDImtxaN4Ta1R6uck1/0W7yhucNQS1W0oMMuWlL4j/d0MO
         mkFYGcopPOxAC83eg/Z5XHFJvXRtTKz0+Y60Vnxt8XSeJILIcQEStX+XvRVjSnNtrZrk
         vXQ0mmuTDwdEHsSptJTEE0P9SXjSsJ/X28R51u0u+wBIuKTE8QgBfq+Z5ZsUBhyxmM7h
         zPJCIp2Kw2nhWxL7zzMoiBHV2ZKQFoWwOspJ7JOPf9oOEu1UCtDsyx65k9NQkanAo05b
         LOOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :references:in-reply-to:message-id:to:from:date:sender
         :dkim-signature;
        bh=d1sJJveXfPEk3e965ILSIXXtIq889kaYCebQoojnvOU=;
        b=r0ok28h93damsxeOOJkYLtnr47egvbbpk6karwEioHNtRxsasaWjp3xXmd3c0Qqoqi
         /Aau8ElFE8sUmtD+aC9Rp1XtOPU/prKx0EWHwpHNdn+bL0/088okWeJzm6SsCLocBpEs
         oeA6IdKrzmkMj2F5jrl4YuSaD/rPMEZ85CFL62rN53CDskaLXX/dtZ1ojDdhI76zzSaU
         dx23+6wyyfXnldBgyho0eWBhOb8kR5lmBPWGD/5qlebx9j8Mkn9eXcaOoAfvHKUusJ6r
         2W/YQfEDB9/1w/JBMiGkDeRs7BtK3PaKp4aiJqDCn86XRKrpPHQJyTdJpJJ9rCH66Oo+
         qX9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=awhvhYSZ;
       spf=pass (google.com: domain of abawer@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d1sJJveXfPEk3e965ILSIXXtIq889kaYCebQoojnvOU=;
        b=gN87jvmvXZ9C4gKsEq52kd4aVsVoShpTrcMYkj9bFIm4h2zbM1wRF8fxDsm8ISxL+x
         1ngcL0v4gCblhXFaSRdI2emGfYIFzrHwhW3aKl5ngeeQ4c1pbA3IpYx91tQu9R0y90wM
         cHK3qD6cOfaKO3FW5ZXf8HMu9XBu9SJjdL12lFQve+dlI7ZfFW1zoEOrq4L+4XNPbVdS
         fKYt7hqajalQxqMIP84JlNNO3Fjsp0jsyK3jlUqvBq+YKUw/yJpS3lUm6nmWVnTn8J9X
         k650cszrn9C1WHAQU7JVdDYla99K2lucR94uwABdkbMP5Thglyi8OtqqvmYnTWSgpsVp
         KFug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d1sJJveXfPEk3e965ILSIXXtIq889kaYCebQoojnvOU=;
        b=GoMqVneFaJIwFKA+NdxlATkria3+KlVcd0Mz7ONJ+rPnFc79VIXXDLr9BaFN05njAb
         rzt9rX9/oCOImy7ZinlVIG0DvXP9MSxdafnqASRiSvVemE53wW1QwY5YgZOxhLz7U4Z/
         Hym0lwREznGjMKrdWYm9VMO9Na8eClaEQpoWzM/OiFlpOl98N17VCUJTIRCZFHiaHSzC
         h7bGmxncA4qUnf5U4dLGfrJATAiDc7Z5pfK58HvET4ZWOPTkJ0hxAACdoluxrHnygScT
         w0YbLgqaoBNT2xZ5AeKc1ff4DXELRKtBzLVvFBJ1yYi6gGD21ETcdHzvhAvTJYuo+u4H
         3O5Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533lnrtF2+is+cU993RqFefbrhRm0Gz91YtPZ5vRs8IwSCZY/udG
	UAGIKJWKnz31pIfXBTKcPYw=
X-Google-Smtp-Source: ABdhPJywq3QVlvDRWMKyPQWbloL3ieq8fo3gM3llqMp7DYSTCifXr+BGBQiD3YgMMN1IEOGG3ZfK+Q==
X-Received: by 2002:a05:6102:201b:: with SMTP id p27mr17241449vsr.145.1596996536179;
        Sun, 09 Aug 2020 11:08:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9f:30de:: with SMTP id k30ls737700uab.5.gmail; Sun, 09 Aug
 2020 11:08:55 -0700 (PDT)
X-Received: by 2002:ab0:22cf:: with SMTP id z15mr16917849uam.52.1596996535697;
        Sun, 09 Aug 2020 11:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596996535; cv=none;
        d=google.com; s=arc-20160816;
        b=DUb4qCGWyf8d6swjBSTECqWdly10ZJb+Z8IsjFKi/h7M0675pXuVOwb0M/IDMO7115
         EjxIH55dsmAVofo9Roh5w9hhzYm6MO+o4MtM30/awcH04ln6BPdHudaNpSpc6SijGwJO
         HHBp0fOwZYXi26LiiZmWaxsUgv+PQiJztbNJmjB7gvSA9pHNaZYxNm+3mhp47EIKqGgq
         GTprWna+A876jxId7QWFGeAAHf65bo6lOTz1BHTk9v3sNbme1Ndw+7gDFZfco6ghgL/C
         SDXiGKxSvRE9/g1sov/Hs3wrGs9jU07uM3s1aYZoAL7jxjFX6seqpzw1NwJL2YlZ0xhZ
         W+hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=seU9tHQFVg7ZhfxVFxuCshXcG3i/NnRrIgmU13S7pFo=;
        b=VjgnqDLHEsekvCaGA5RCrFjStbm4HCTdM6tiX6oZHRqzN3I8lwpDNjSHzPmLtAaDSi
         PUV7UxvDiqDDos2YVTolTN9ZVwsSI96+0DLeCh/q5TL5yzlnwH3yOT1lxrwZPCVeaHEk
         i0+jzJkZxR8hi1N4CzT7qW2FwMjtoU/9IoYFKLfA/nF0y/CHLidZ36uMP3tx5K5vI7wJ
         0oHOpNKMk2Qrq0iecWQGOwmPtb2ivGI/oUxbOK5cH8tJnh6ddDCjQCU2l5NuIVjvWuTT
         fSirhUbU3hmFf6qYf85FaoBShgfj/ZKVi0TM8hDyZXJUGyO8EpLWVe3h+OAu96uwDcSx
         H7JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=awhvhYSZ;
       spf=pass (google.com: domain of abawer@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id p197si1017009vkp.0.2020.08.09.11.08.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Aug 2020 11:08:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-LkFmfPaYPlSEcYOOs-CFFw-1; Sun, 09 Aug 2020 14:08:51 -0400
X-MC-Unique: LkFmfPaYPlSEcYOOs-CFFw-1
Received: by mail-ot1-f69.google.com with SMTP id e108so3423446ote.5
        for <open-iscsi@googlegroups.com>; Sun, 09 Aug 2020 11:08:51 -0700 (PDT)
X-Received: by 2002:a05:6830:310d:: with SMTP id b13mr20529111ots.328.1596996530922;
        Sun, 09 Aug 2020 11:08:50 -0700 (PDT)
X-Received: by 2002:a05:6830:310d:: with SMTP id b13mr20529097ots.328.1596996530671;
        Sun, 09 Aug 2020 11:08:50 -0700 (PDT)
Date: Sun, 9 Aug 2020 11:08:49 -0700 (PDT)
From: Amit Bawer <abawer@redhat.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
In-Reply-To: <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_474_534341245.1596996529775"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=awhvhYSZ;
       spf=pass (google.com: domain of abawer@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
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

------=_Part_474_534341245.1596996529775
Content-Type: multipart/alternative; 
	boundary="----=_Part_475_685982221.1596996529776"

------=_Part_475_685982221.1596996529776
Content-Type: text/plain; charset="UTF-8"



On Saturday, August 8, 2020 at 12:55:22 AM UTC+3 The Lee-Man wrote:

> On Monday, July 27, 2020 at 10:38:05 AM UTC-7, Amit Bawer wrote:
>>
>> Thank you for your answers,
>>
>> The motivation behind the original question is for reducing the waiting 
>> time for different iscsi connections logins
>> in case some of the portals are down.
>>
>> We have a limitation on our RHEV system where all logins to listed iscsi 
>> targets should finish within 180 seconds in total.
>> In our current implementation we serialize the iscsiadm node logins one 
>> after the other,
>> each is for specific target and portal. In such scheme, each login would 
>> wait 120 seconds in case a portal is down
>> (default 15 seconds login timeout * 8 login retries), so if we have 2 or 
>> more connections down, we spend at least 240 seconds
>> which exceeds our 180 seconds time limit and the entire operation is 
>> considered to be failed (RHEV-wise).
>>
>
> Of course these times are tunable, as the README distributed with 
> open-iscsi suggests. But each setting has a trade-off. For example, if you 
> shorten the timeout, you may miss connecting to a target that is just 
> temporarily unreachable. 
>
>>
>> Testing [1] different login schemes is summarized in the following table 
>> (logins to 2 targets with 2 portals each).
>> It seems that either login-all nodes after creating them, as suggested in 
>> previous answer here, compares in  total time spent 
>> with doing specific node logins concurrently (i.e. running iscsiadm -m 
>> node -T target -p portal -I interface  -l in parallel per
>> each target-portal), for both cases of all portals being online and when 
>> one portal is down:
>>
>> Login scheme                         Online  Portals             Active 
>> Sessions       Total Login Time (seconds)
>>
>> ---------------------------------------------------------------------------------------------------------------------------------------------------------
>>     All at once                            
>> 2/2                                 4                               2.1
>>     All at once                            1/2                           
>>       2                               120.2
>>     Serial target-portal              2/2                                
>> 4                                8.5
>>     Serial target-portal              1/2                                
>> 2                                243.5
>>     Concurrent target-portal     2/2                               
>> 4                                2.1
>>     Concurrent target-portal    1/2                                
>> 2                               120.1
>>
>
> So it looks like "All at once" is as fast as concurrent? I must be missing 
> something. Maybe I'm misunderstanding what "all at once" means? 
>

To illustrate from the test discussed above, calling login_all() after 
calling new_node(...) per each listed target and portal as shown below:
...
    for target, portal in connections:
        new_node(target, portal)

    if args.concurrency:
        login_threads(connections, args.concurrency)
    else:
        login_all()
...

def new_node(target, portal):
    logging.info("Adding node for target %s portal %s", target, portal)

    run([
        "iscsiadm",
        "--mode", "node",
        "--targetname", target,
        "--interface", "default",
        "--portal", portal,
        "--op=new"])

    run([
        "iscsiadm",
        "--mode", "node",
        "--targetname", target,
        "--interface", "default",
        "--portal", portal,
        "--op=update",
        "--name", "node.startup",
        "--value", "manual"])

def login_all():
    logging.info("Login to all nodes")
    try:
        run(["iscsiadm", "--mode", "node", "--loginall=manual"])
    except Error as e:
        # Expected timeout error when there are disconnected portals.
        if e.rc != 8:
            raise
        logging.error("Some login failed: %s", e)
 

>
>> Using concurrent target-portal logins seems to be preferable in our 
>> perspective as it allows to connect only to the
>> specified target and portals without the risk of intermixing with other 
>> potential iscsi targets.
>>
>
> Okay, maybe that explains it. You don't trust the "all" option? You are, 
> after all, in charge of the node database. But of course that's your 
> choice. 
>
It's more about safety I guess, since the connection flow may run on a 
machine which has other iscsi connections set outside/along this flow. 

>
>> The node creation part is kept serial in all tests here and we have seen 
>> it may result in the iscsi DB issues if run in parallel.
>> But using only node logins in parallel doesn't seems to have issues for 
>> at least 1000 tries of out tests.
>>
>
> In general the heavy lifting here is done by the kernel, which has proper 
> multi-thread locking. And I believe iscsiadm has a single lock to the 
> kernel communication socket, so that doesn't get messed up. So I wouldn't 
> go as far as guaranteeing that this will work, but I agree it certainly 
> seems to reliably work. 
>
>>
>> The question to be asked here is it advisable by open-iscsi?
>> I know I have been answered already that iscsiadm is racy, but does it 
>> applies to node logins as well?
>>
>
> I guess I answered that. I wouldn't advise against it, but I also wouldn't 
> call best practice in general. 
>
>>
>> The other option is to use one login-all call without parallelism, but 
>> that would have other implications on our system to consider.
>>
>
> Such as? 
>
As mentioned above,  unless there is a way to specify a list of targets and 
portals for a single login (all) command.

>
>> Your answers would be helpful once again.
>>
>> Thanks,
>> - Amit
>>
>>
> You might be interested in a new feature I'm considering adding to 
> iscsiadm to do asynchronous logins. In other words, the iscsiadm could, 
> when asked to login to one or more targets, would send the login request to 
> the targets, then return success immediately. It is then up to the end-user 
> (you in this case) to poll for when the target actually shows up.
>
This sounds very interesting, but probably will be available to us only on 
later RHEL releases, if chosen to be delivered downstream.
At present it seems we can only use the login-all way or logins in a 
dedicated threads per target-portal.

>
> This would mean that you system boot could occur much more quickly, 
> especially when using for example multipathing on top of two paths to a 
> target, and one path is not up. The problem is that this adds a layer of 
> functionality needed in the client (again, you in this case), since the 
> client has to poll for success, handle timeouts, etc. Also, this is just 
> test code, so you could try it at your own risk. :)
>
> If interested, let me know, and I'll point you at a repo:branch 
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a3584ce4-5786-425a-91a5-d1b6e7d65bbdn%40googlegroups.com.

------=_Part_475_685982221.1596996529776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">O=
n Saturday, August 8, 2020 at 12:55:22 AM UTC+3 The Lee-Man wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-lef=
t: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div dir=3D"ltr">On Mo=
nday, July 27, 2020 at 10:38:05 AM UTC-7, Amit Bawer wrote:<blockquote clas=
s=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div>Thank you for your answers,</div><div><br></di=
v><div>The motivation behind the original question is for reducing the wait=
ing time for different iscsi connections logins</div><div>in case some of t=
he portals are down.<br><br>We have a limitation on our RHEV system where a=
ll logins to listed iscsi targets should finish within 180 seconds in total=
.<br></div><div>In our current implementation we serialize the iscsiadm nod=
e logins one after the other,</div><div>each is for specific target and por=
tal. In such scheme, each login would wait 120 seconds in case a portal is =
down</div><div>(default 15 seconds login timeout * 8 login retries), so if =
we have 2 or more connections down, we spend at least 240 seconds</div><div=
>which exceeds our 180 seconds time limit and the entire operation is consi=
dered to be failed (RHEV-wise).<br></div></blockquote><div><br></div></div>=
<div dir=3D"ltr"><div>Of course these times are tunable, as the README dist=
ributed with open-iscsi suggests. But each setting has a trade-off. For exa=
mple, if you shorten the timeout, you may miss connecting to a target that =
is just temporarily unreachable. <br></div></div><div dir=3D"ltr"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div></div><div><br></div><div>Testing [1] d=
ifferent login schemes is summarized in the following table (logins to 2 ta=
rgets with 2 portals each).</div><div>It seems that either login-all nodes =
after creating them, as suggested in previous answer here, compares in&nbsp=
; total time spent <br></div><div>with doing specific node logins concurren=
tly (i.e. running iscsiadm -m node -T target -p portal -I interface&nbsp; -=
l in parallel per</div><div>each target-portal), for both cases of all port=
als being online and when one portal is down:<br></div><div><br></div><div>=
Login scheme &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; Online&nbsp; Portals &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Active Sessions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Login T=
ime (seconds)<br>----------------------------------------------------------=
---------------------------------------------------------------------------=
--------------------<br>&nbsp;&nbsp;&nbsp; All at once&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2/2&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.1<b=
r>&nbsp;&nbsp;&nbsp; All at once&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 1/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120.2<br>&nbsp;&nbsp;&nbsp; Seri=
al target-portal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; 2/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; 8.5<br>&nbsp;&nbsp;&nbsp; Serial target-portal&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1/=
2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 243.5<br>&nbsp;&nbsp;&nbsp; Concurrent target-portal&nbsp;&nbsp;&nbsp;&nbs=
p; 2/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
2.1<br>&nbsp;&nbsp;&nbsp; Concurrent target-portal&nbsp;&nbsp;&nbsp; 1/2&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120.1<br>=
</div></blockquote><div><br></div></div><div dir=3D"ltr"><div>So it looks l=
ike "All at once" is as fast as concurrent? I must be missing something. Ma=
ybe I'm misunderstanding what "all at once" means? <br></div></div></blockq=
uote><div><br></div><div>To illustrate from the test discussed above, calli=
ng login_all() after calling new_node(...) per each listed target and porta=
l as shown below:</div><div>...<br></div><div>&nbsp;&nbsp;&nbsp; for target=
, portal in connections:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_=
node(target, portal)<br><br>&nbsp;&nbsp;&nbsp; if args.concurrency:<br>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; login_threads(connections, args.conc=
urrency)<br>&nbsp;&nbsp;&nbsp; else:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; login_all()</div><div>...<br></div><div><br></div><div>def new_node=
(target, portal):<br>&nbsp;&nbsp;&nbsp; logging.info("Adding node for targe=
t %s portal %s", target, portal)<br><br>&nbsp;&nbsp;&nbsp; run([<br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "iscsiadm",<br>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; "--mode", "node",<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; "--targetname", target,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; "--interface", "default",<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
"--portal", portal,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "--op=3Dn=
ew"])<br><br>&nbsp;&nbsp;&nbsp; run([<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; "iscsiadm",<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "--mode"=
, "node",<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "--targetname", tar=
get,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "--interface", "default"=
,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "--portal", portal,<br>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "--op=3Dupdate",<br>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; "--name", "node.startup",<br>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; "--value", "manual"])<br></div><div><br></div><div>=
def login_all():<br>&nbsp;&nbsp;&nbsp; logging.info("Login to all nodes")<b=
r>&nbsp;&nbsp;&nbsp; try:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; run=
(["iscsiadm", "--mode", "node", "--loginall=3Dmanual"])<br>&nbsp;&nbsp;&nbs=
p; except Error as e:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Expec=
ted timeout error when there are disconnected portals.<br>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if e.rc !=3D 8:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; logging.error("Some login failed: %s", e)<br></div><div>&nbsp=
;</div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; bord=
er-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div dir=3D"ltr"=
><div></div></div><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=
=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div><br></div><div>Using concurrent target-portal logins seems to be pref=
erable in our perspective as it allows to connect only to the</div><div>spe=
cified target and portals without the risk of intermixing with other potent=
ial iscsi targets.</div></blockquote><div><br></div></div><div dir=3D"ltr">=
<div>Okay, maybe that explains it. You don't trust the "all" option? You ar=
e, after all, in charge of the node database. But of course that's your cho=
ice. <br></div></div></blockquote><div>It's more about safety I guess, sinc=
e the connection flow may run on a machine which has other iscsi connection=
s set outside/along this flow. <br></div><blockquote class=3D"gmail_quote" =
style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); pa=
dding-left: 1ex;"><div dir=3D"ltr"><div></div></div><div dir=3D"ltr"><block=
quote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div><br></div><div>The node creation par=
t is kept serial in all tests here and we have seen it may result in the is=
csi DB issues if run in parallel.</div><div>But using only node logins in p=
arallel doesn't seems to have issues for at least 1000 tries of out tests.<=
/div></blockquote><div><br></div></div><div dir=3D"ltr"><div>In general the=
 heavy lifting here is done by the kernel, which has proper multi-thread lo=
cking. And I believe iscsiadm has a single lock to the kernel communication=
 socket, so that doesn't get messed up. So I wouldn't go as far as guarante=
eing that this will work, but I agree it certainly seems to reliably work. =
<br></div></div><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D=
"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv><br></div><div>The question to be asked here is it advisable by open-isc=
si?</div><div> I know I have been answered already that iscsiadm is racy, b=
ut does it applies to node logins as well?</div></blockquote><div><br></div=
></div><div dir=3D"ltr"><div>I guess I answered that. I wouldn't advise aga=
inst it, but I also wouldn't call best practice in general. <br></div></div=
><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0;margi=
n-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div><br></div><d=
iv>The other option is to use one login-all call without parallelism, but t=
hat would have other implications on our system to consider.<br></div></blo=
ckquote><div><br></div></div><div dir=3D"ltr"><div>Such as? <br></div></div=
></blockquote><div>As mentioned above,&nbsp; unless there is a way to speci=
fy a list of targets and portals for a single login (all) command.<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-lef=
t: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div dir=3D"ltr"><div>=
</div></div><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div><=
br>Your answers would be helpful once again.</div><div><br>Thanks,<br>- Ami=
t</div><br></blockquote><div><br></div></div><div dir=3D"ltr"><div>You migh=
t be interested in a new feature I'm considering adding to iscsiadm to do a=
synchronous logins. In other words, the iscsiadm could, when asked to login=
 to one or more targets, would send the login request to the targets, then =
return success immediately. It is then up to the end-user (you in this case=
) to poll for when the target actually shows up.</div></div></blockquote><d=
iv>This sounds very interesting, but probably will be available to us only =
on later RHEL releases, if chosen to be delivered downstream.</div><div>At =
present it seems we can only use the login-all way or logins in a dedicated=
 threads per target-portal.<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); paddin=
g-left: 1ex;"><div dir=3D"ltr"><div><br></div><div>This would mean that you=
 system boot could occur much more quickly, especially when using for examp=
le multipathing on top of two paths to a target, and one path is not up. Th=
e problem is that this adds a layer of functionality needed in the client (=
again, you in this case), since the client has to poll for success, handle =
timeouts, etc. Also, this is just test code, so you could try it at your ow=
n risk. :)</div><div><br></div><div>If interested, let me know, and I'll po=
int you at a repo:branch <br></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a3584ce4-5786-425a-91a5-d1b6e7d65bbdn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/a3584ce4-5786-425a-91a5-d1b6e7d65bbdn%40googlegroups.com</a>.=
<br />

------=_Part_475_685982221.1596996529776--

------=_Part_474_534341245.1596996529775--

