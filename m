Return-Path: <open-iscsi+bncBC755V5RXMKBBS43W74QKGQEIDOMRWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DCC23F4A5
	for <lists+open-iscsi@lfdr.de>; Fri,  7 Aug 2020 23:55:24 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id s14sf1802010otr.9
        for <lists+open-iscsi@lfdr.de>; Fri, 07 Aug 2020 14:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qUgs9r7ypKGIbmM9I3eAMJTlnPorCw3ZUN7TPSPIJLU=;
        b=Az7KQi/8x406M0tnY61Da05V2I7kP9shfQsxcSBvBmaNaxFzCBCHps/cicQWKSLocN
         e6sfNU/V457/bo7JrHi9JhKWGYU2//fFBXsWeRHd9cYrxEI0GiK3ew09P+1D7JZjkBfC
         sd1xoEDbDW6wf8WfkfzcSc8pAk4wBD1FfwrnNWI1r+0cHYDCfu12KnPA/WAkvxAr9D93
         eUvZwU8Ku6pyom/G2sFyaCA1014lkb3wrQd8219cZEeBsrnY2FMVCkXIWJSjRPuaeTIG
         ypXmLG4sVYlaEsOOfqMgx3YulCC7BV6fcsNAnfwu/GP3+iQ7wp0YPgh2w/L5t+/qsGYC
         aJng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qUgs9r7ypKGIbmM9I3eAMJTlnPorCw3ZUN7TPSPIJLU=;
        b=I0cDHlfw2ibiX+e+Zw2EoEAl4yp87XqT0BdvU64LnqJm3BXlRWZDe+IMZANnpIbnZ7
         H4HE8EU6hVuJQqurmYD9rnaGAb5alXQOIX/pD+dOmmVhp2iuV+D4oiovzumFHjuhPum1
         6rT+xXncHHEdRlx/l8ad/DhcGUl2aIlDtXsk8jQ0W2BT+j5mZLU8YdMmutT6Zb/cQiK6
         yj8CV3a+iJkj9hTmV5eVA9Gs52+Yid6a+XMZw9RxJyXG3MtS1vv3ZsxFRHVoApdLkG0U
         d5qJBuIlijT5yZsXc+Q1rasAIpqhtLL3S0cYmn1AycLujcYh+iw5OpZmV7etK4he2H+O
         wY9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qUgs9r7ypKGIbmM9I3eAMJTlnPorCw3ZUN7TPSPIJLU=;
        b=Kyy2xIdmSpf9caPVbwZQ6V3HDF3m6EBZD3gqSxcqOivgwMYRHo/9HQ5/2+RKrOyi+7
         5GsPnCTQ9QIW35Qzef1oypZ3vHMc225wGvJcsfnvnHe+ViDOjXmKBbOdW45mlwCbSgd5
         4JYsRfgFaPqZt5c2d+2PjqeNgj2SwL58wtvV2casBD490qk5PQc71mKdiHcDPi0dOWG7
         geqKXiXZfmayJSd6+la64UMW5cV9KGSMcyYRKSLRi2TBI5g3JeEYm4YlOUyMZRtx2AjH
         nKgeyN022gZKDliFfhGKPCcZApNvn0KJfMX/qm5SddxjmLYul61xDK+7T5GjiuAb/FJx
         20nA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533+OJ76STWa5vprGaKtG/b9vqEybJiJ3f6zoO5shbWm1jFJRxuG
	bDCS8JT9cHZSrlq9giey+oA=
X-Google-Smtp-Source: ABdhPJxeRl6Z05niM1KHNvXJLVyX+Hu3sW9AkpAiJwzTb7GXiSACvyo+bYY1pNJnAkHIWpFCUdjd5g==
X-Received: by 2002:a4a:e3cd:: with SMTP id m13mr14400483oov.43.1596837323829;
        Fri, 07 Aug 2020 14:55:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:56c3:: with SMTP id k186ls2394095oib.5.gmail; Fri, 07
 Aug 2020 14:55:23 -0700 (PDT)
X-Received: by 2002:a54:470b:: with SMTP id k11mr13248471oik.45.1596837323372;
        Fri, 07 Aug 2020 14:55:23 -0700 (PDT)
Date: Fri, 7 Aug 2020 14:55:22 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
In-Reply-To: <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_472_541728098.1596837322750"
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

------=_Part_472_541728098.1596837322750
Content-Type: multipart/alternative; 
	boundary="----=_Part_473_267017289.1596837322750"

------=_Part_473_267017289.1596837322750
Content-Type: text/plain; charset="UTF-8"

On Monday, July 27, 2020 at 10:38:05 AM UTC-7, Amit Bawer wrote:
>
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

Of course these times are tunable, as the README distributed with 
open-iscsi suggests. But each setting has a trade-off. For example, if you 
shorten the timeout, you may miss connecting to a target that is just 
temporarily unreachable. 

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

So it looks like "All at once" is as fast as concurrent? I must be missing 
something. Maybe I'm misunderstanding what "all at once" means? 

>
> Using concurrent target-portal logins seems to be preferable in our 
> perspective as it allows to connect only to the
> specified target and portals without the risk of intermixing with other 
> potential iscsi targets.
>

Okay, maybe that explains it. You don't trust the "all" option? You are, 
after all, in charge of the node database. But of course that's your 
choice. 

>
> The node creation part is kept serial in all tests here and we have seen 
> it may result in the iscsi DB issues if run in parallel.
> But using only node logins in parallel doesn't seems to have issues for at 
> least 1000 tries of out tests.
>

In general the heavy lifting here is done by the kernel, which has proper 
multi-thread locking. And I believe iscsiadm has a single lock to the 
kernel communication socket, so that doesn't get messed up. So I wouldn't 
go as far as guaranteeing that this will work, but I agree it certainly 
seems to reliably work. 

>
> The question to be asked here is it advisable by open-iscsi?
> I know I have been answered already that iscsiadm is racy, but does it 
> applies to node logins as well?
>

I guess I answered that. I wouldn't advise against it, but I also wouldn't 
call best practice in general. 

>
> The other option is to use one login-all call without parallelism, but 
> that would have other implications on our system to consider.
>

Such as? 

>
> Your answers would be helpful once again.
>
> Thanks,
> - Amit
>
>
You might be interested in a new feature I'm considering adding to iscsiadm 
to do asynchronous logins. In other words, the iscsiadm could, when asked 
to login to one or more targets, would send the login request to the 
targets, then return success immediately. It is then up to the end-user 
(you in this case) to poll for when the target actually shows up.

This would mean that you system boot could occur much more quickly, 
especially when using for example multipathing on top of two paths to a 
target, and one path is not up. The problem is that this adds a layer of 
functionality needed in the client (again, you in this case), since the 
client has to poll for success, handle timeouts, etc. Also, this is just 
test code, so you could try it at your own risk. :)

If interested, let me know, and I'll point you at a repo:branch 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3d3c007c-e569-4932-b7b8-b580b82fe5f9o%40googlegroups.com.

------=_Part_473_267017289.1596837322750
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Monday, July 27, 2020 at 10:38:05 AM UTC-7, Amit Bawer =
wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8=
ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div>Thank you for your =
answers,</div><div><br></div><div>The motivation behind the original questi=
on is for reducing the waiting time for different iscsi connections logins<=
/div><div>in case some of the portals are down.<br><br>We have a limitation=
 on our RHEV system where all logins to listed iscsi targets should finish =
within 180 seconds in total.<br></div><div>In our current implementation we=
 serialize the iscsiadm node logins one after the other,</div><div>each is =
for specific target and portal. In such scheme, each login would wait 120 s=
econds in case a portal is down</div><div>(default 15 seconds login timeout=
 * 8 login retries), so if we have 2 or more connections down, we spend at =
least 240 seconds</div><div>which exceeds our 180 seconds time limit and th=
e entire operation is considered to be failed (RHEV-wise).<br></div></block=
quote><div><br></div><div>Of course these times are tunable, as the README =
distributed with open-iscsi suggests. But each setting has a trade-off. For=
 example, if you shorten the timeout, you may miss connecting to a target t=
hat is just temporarily unreachable. <br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;pad=
ding-left: 1ex;"><div></div><div><br></div><div>Testing [1] different login=
 schemes is summarized in the following table (logins to 2 targets with 2 p=
ortals each).</div><div>It seems that either login-all nodes after creating=
 them, as suggested in previous answer here, compares in=C2=A0 total time s=
pent <br></div><div>with doing specific node logins concurrently (i.e. runn=
ing iscsiadm -m node -T target -p portal -I interface=C2=A0 -l in parallel =
per</div><div>each target-portal), for both cases of all portals being onli=
ne and when one portal is down:<br></div><div><br></div><div>Login scheme =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Online=C2=
=A0 Portals =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Active Sessions =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Total Login Time (second=
s)<br>------------------------------<wbr>------------------------------<wbr=
>------------------------------<wbr>------------------------------<wbr>----=
--------------------------<wbr>---<br>=C2=A0=C2=A0=C2=A0 All at once=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0 2/2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0 2.1<br>=C2=A0=C2=A0=C2=A0 All at once=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1/2=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0 120.2<br>=C2=A0=C2=A0=C2=A0 Serial target-portal=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2/2=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0 8.5<br>=C2=A0=C2=A0=C2=A0 Serial target-portal=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1/2=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0 243=
.5<br>=C2=A0=C2=A0=C2=A0 Concurrent target-portal=C2=A0=C2=A0=C2=A0=C2=A0 2=
/2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0 2.1<br>=C2=A0=C2=A0=C2=A0 Concurrent target-portal=C2=A0=C2=A0=C2=
=A0 1/2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0 120.1<br></div></blockquote><div><br></div><div>So it looks =
like &quot;All at once&quot; is as fast as concurrent? I must be missing so=
mething. Maybe I&#39;m misunderstanding what &quot;all at once&quot; means?=
 <br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left=
: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div><br></div><div=
>Using concurrent target-portal logins seems to be preferable in our perspe=
ctive as it allows to connect only to the</div><div>specified target and po=
rtals without the risk of intermixing with other potential iscsi targets.</=
div></blockquote><div><br></div><div>Okay, maybe that explains it. You don&=
#39;t trust the &quot;all&quot; option? You are, after all, in charge of th=
e node database. But of course that&#39;s your choice. <br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: =
1px #ccc solid;padding-left: 1ex;"><div><br></div><div>The node creation pa=
rt is kept serial in all tests here and we have seen it may result in the i=
scsi DB issues if run in parallel.</div><div>But using only node logins in =
parallel doesn&#39;t seems to have issues for at least 1000 tries of out te=
sts.</div></blockquote><div><br></div><div>In general the heavy lifting her=
e is done by the kernel, which has proper multi-thread locking. And I belie=
ve iscsiadm has a single lock to the kernel communication socket, so that d=
oesn&#39;t get messed up. So I wouldn&#39;t go as far as guaranteeing that =
this will work, but I agree it certainly seems to reliably work. <br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bor=
der-left: 1px #ccc solid;padding-left: 1ex;"><div><br></div><div>The questi=
on to be asked here is it advisable by open-iscsi?</div><div> I know I have=
 been answered already that iscsiadm is racy, but does it applies to node l=
ogins as well?</div></blockquote><div><br></div><div>I guess I answered tha=
t. I wouldn&#39;t advise against it, but I also wouldn&#39;t call best prac=
tice in general. <br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><di=
v><br></div><div>The other option is to use one login-all call without para=
llelism, but that would have other implications on our system to consider.<=
br></div></blockquote><div><br></div><div>Such as? <br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px =
#ccc solid;padding-left: 1ex;"><div><br>Your answers would be helpful once =
again.</div><div><br>Thanks,<br>- Amit</div><br></blockquote><div><br></div=
><div>You might be interested in a new feature I&#39;m considering adding t=
o iscsiadm to do asynchronous logins. In other words, the iscsiadm could, w=
hen asked to login to one or more targets, would send the login request to =
the targets, then return success immediately. It is then up to the end-user=
 (you in this case) to poll for when the target actually shows up.</div><di=
v><br></div><div>This would mean that you system boot could occur much more=
 quickly, especially when using for example multipathing on top of two path=
s to a target, and one path is not up. The problem is that this adds a laye=
r of functionality needed in the client (again, you in this case), since th=
e client has to poll for success, handle timeouts, etc. Also, this is just =
test code, so you could try it at your own risk. :)</div><div><br></div><di=
v>If interested, let me know, and I&#39;ll point you at a repo:branch <br><=
/div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/3d3c007c-e569-4932-b7b8-b580b82fe5f9o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/3d3c007c-e569-4932-b7b8-b580b82fe5f9o%40googlegroups.com</a>.=
<br />

------=_Part_473_267017289.1596837322750--

------=_Part_472_541728098.1596837322750--
