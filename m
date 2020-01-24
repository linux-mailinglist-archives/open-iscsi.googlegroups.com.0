Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBEH7VDYQKGQEYZAKXGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7441475BC
	for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 01:51:30 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id t4sf262705ili.21
        for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 16:51:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579827089; cv=pass;
        d=google.com; s=arc-20160816;
        b=aVaAArb13wmeRtbvBxu9OVktFLNpP1ZrHQqICZjTuK9kLhQoy2AfB0BypnwV1LwKD2
         0GFX4hSzaDwOmw1WyAjzf2PTUKoVR1WDWvXtGpcP6jU/RVW20FzMKweKaco31Ox+5+5d
         xRy2lCcGS91ldOSw2q/Ms3HmcIsvPC2IZqCubWHicS7xINk/wcrdJLgwlSHvSFBxB0n8
         w1mIPbdnKlxOhrfaKmCvMIXJeheU0RzRyZx/6/1tCUclWbIyZa1MtUePk1mauO7ZUM7b
         ZgKo1+pdaGwgOymv8gOsfRsd1UtMuIzcCSsjXrGalq9khUz4ShJJimZMeo3h5CjQIkc+
         9Q8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AH7UuLdOVY+pPHAPiji2qhrFwzbrHM8Zc8f70cnROjc=;
        b=HroEOr+o/5CYFFhNezkr9L6JMl9lTRuFHVArlmBviLqr6xbMW7JlW+2yIKR/t0BrYy
         JPVR0AQUHqjfw+3yngUqsn4fXhIWSE8tj/WajOlO7AC6DBwFIn3SeVhyFnsvWdm8tCVg
         7VNORsXvAaoFUZ3TcapDpJPP466cq3qUIJzAU8xlxx+kJIcW3boJlFaJK4pgyNo0jxnG
         W2PoIq+64jHQqgeGNU57fZHSP8S3iWcgPNb/unN07uyQrQWSKwoicli/ICMp3zWZ7zsW
         rc3YgZFo2E/qkdQ1X5TlAeAEsdykWfPZ5/nS1Flw2e1Of9M/VbXnJ6V128SWRVew+NeT
         pODw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F6g/EJJH";
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AH7UuLdOVY+pPHAPiji2qhrFwzbrHM8Zc8f70cnROjc=;
        b=f9C6Xk87MRTsgXgyjAw5Svk/xZj4MS6Eu2J2gkvN0tgufZF6UsXWbY55GHS5Bdjx1K
         V7Su13SUpSu3XOQBqmmI3il2j8qvDp4DSJY0Qc/YKVOEB0w/WF/pyjNd3mpgmRH9K/tu
         /TvMtZc99SVIyYRzOwSRafurqVhK7J5OXoHn6EJjGCB3ar6GV+G2IwhSg0IQpuqWq+CP
         cVktcvAySYgEnTzKn0KV3K4HxPxMW4vUrGkg0yVKO/B1fdQfOtgrQeWRFie1aidnYDeM
         9GWRjdjlWHHuzIcZ/hPqX7kqsL/6a2nEwAI3H4UV0FrgRb0XsflzzSqFWevWvQdWNv53
         XuRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AH7UuLdOVY+pPHAPiji2qhrFwzbrHM8Zc8f70cnROjc=;
        b=Bjr8AaklIszV/Oni9wYpQq5hzO+XtudInJLUw8Yzl33f5W3ANQZWsXCqOyw21YsM+P
         2uaIN11CPR9ABt5ORPoKu6Paetr7b/HM9yKZc7BSlsHse8il+H2wem+UNAhBo0+8Jseo
         fWt53dcv2E+MBvJSp9PGI/XpxQoJiNtUajDduQM6W59dgUhBjuu/flRimnsPdHcl0vQg
         8ofRRllqy9yjEh1CRYrCxFTa/OW0c2RnOkm4MwFjIjIsTgh0pdkAgUfDv4pYpBn+QOeJ
         AlrehamjVcq4c2pSMuliph9ljumshJc1fxrYBGcYrdP2+uU0OskCBGuYo4MEr9Gkon+Z
         8htQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AH7UuLdOVY+pPHAPiji2qhrFwzbrHM8Zc8f70cnROjc=;
        b=iT7bs94J95ZXE8jPm7r+jeRexrI5ArZ9ya7XcjY8IZl8U+BCryS9ldsLKkyJxSufgn
         nYKmS/q/ca/d63goNC06andvqVN1B+yM0AdHJm+jMQIVZkeukf20ZvufxPfnQ+Yiwny/
         /D0QC07aLvL8S89vT4M5p9CH3M0Iw1bD+7YXXu5yP+dFHTndYSXbKbjVYMwDNZ1IjaP6
         Wk8SKYAs3TB4k/Hk/h7mK+y7eYRkzekkFhikM/TkXVR/x3JXYha0fnyIIJe6sqHRa1kb
         ASyDsQpjJFrz3xlz+ir6DamOKDJzx98IygZ5Hn4cZcH4RnhhDi1JkIsya6Jzqw+exuhj
         o3Dg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWL9x+s4qDhoytBuoDTB+QqF2thm/3NzOX27sba7bpkQi07WBsE
	4PS8zeS6GqSmSg4lp0zGWik=
X-Google-Smtp-Source: APXvYqyZzmwRF0iTnHcEaaZ8+zjIDH44ybqfd72GiQysFK7aBfmANJun83LUh/neJfHxbfW0XA6+fA==
X-Received: by 2002:a6b:f214:: with SMTP id q20mr355290ioh.137.1579827089017;
        Thu, 23 Jan 2020 16:51:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5e:dd4a:: with SMTP id u10ls39543iop.5.gmail; Thu, 23 Jan
 2020 16:51:28 -0800 (PST)
X-Received: by 2002:a6b:7703:: with SMTP id n3mr340551iom.229.1579827088574;
        Thu, 23 Jan 2020 16:51:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579827088; cv=none;
        d=google.com; s=arc-20160816;
        b=tzJcSXNukmD92GLtuWe9AkiQ3aP9S0SdoRHHz6MZlpQYa/xhS9c+0eegy1/zb3pjc4
         S/3yS9rI0SH/2JAyMfwcgDTvz1/hK37SvgB7oL2voR9MCRdjb01T8ccrHjaS3ih516up
         lpKzWZ+THoWD4hQFEFX9LYnSfSEScaAtVivWiXv1DJ+iT22gcRqox191c4yuSt1qzA2L
         HfKy7TyhnlyvyqWhzWbcHc3JGU7j5wf8kog0/0ICuv9QiyLC0nq88qEqVaNIS2fS6iHH
         33AwXRFYs7z4ZBZYxKt1PMffnrwCBHu36h8OEIWOL7SNpzHoPda7aPcMDabwGG/nrJKn
         C9Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=xDKuMu1D3YqmZR9gMEZblGWkhz24DZIh3u1URuS2lbo=;
        b=t9xxdqIEmEugbiqOe0iHO3TQ2BO8bJ83VAPjVLOgaKTy+6mhRFW5zF1qS8DBYmUEjc
         H0i/0LeOOV2WXpJcDYxtH5vqbn73CMA+B4YUk7+vYB1/m8sXwPEr6I4SA75Z4xZNmAbG
         BJ/llsId2qG+BTNIyL8JpmX+te7E4HjtayFlFE3pUGZzfiVgrhAidNonrwyQVjyKTGss
         cMz8VzHuXsefOcCkqdxs6apkMHtQLZlqkZfZxLWmF7CoQ9DgFzjAko7OLFnSqDZTGhGG
         2oemiEKfSyue+NFZX4VMbpnR66VUkC2QWz3CxAo/G+pbCYE5Gw1I9okVu2IZwLAq53Sq
         zVew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F6g/EJJH";
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id b16si159745ion.0.2020.01.23.16.51.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 16:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id i11so249929ioi.12
        for <open-iscsi@googlegroups.com>; Thu, 23 Jan 2020 16:51:28 -0800 (PST)
X-Received: by 2002:a05:6638:2b7:: with SMTP id d23mr506838jaq.108.1579827088128;
 Thu, 23 Jan 2020 16:51:28 -0800 (PST)
MIME-Version: 1.0
References: <fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1@googlegroups.com> <8f236c4a-a207-4a0e-8dff-ad14a74e57dc@googlegroups.com>
In-Reply-To: <8f236c4a-a207-4a0e-8dff-ad14a74e57dc@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Thu, 23 Jan 2020 19:51:16 -0500
Message-ID: <CAK3e-EbuwXpvxzTnaGtq3URrfhC4aUvX0+4zKat3A2STrON5=g@mail.gmail.com>
Subject: Re: iSCSI Multiqueue
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000064fdda059cd828d3"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="F6g/EJJH";       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--00000000000064fdda059cd828d3
Content-Type: text/plain; charset="UTF-8"

Hello

 Thanks for sending this.  I too believe this is how it works and given the
current performance of OiS it's certainly not single threaded per iSCSI
session, and with multiple iSCSI sessions over different NICs, connecting
into multipathd,  performance and redundancy needs are met for the vast
majority of SAN applications.

 Often the bottleneck is the backend storage given the interface speeds
available today for iSCSI.    Especially as you add more hosts. since the
IO load as seen by storage is typically very random.

 Regards,
Don




On Thu, Jan 23, 2020 at 4:51 PM The Lee-Man <leeman.duncan@gmail.com> wrote:

> On Wednesday, January 15, 2020 at 7:16:48 AM UTC-8, Bobby wrote:
>>
>>
>> Hi all,
>>
>> I have a question regarding multi-queue in iSCSI. AFAIK, *scsi-mq* has
>> been functional in kernel since kernel 3.17. Because earlier,
>> the block layer was updated to multi-queue *blk-mq* from single-queue.
>> So the current kernel has full-fledged *multi-queues*.
>>
>> The question is:
>>
>> How an iSCSI initiator uses multi-queue? Does it mean having multiple
>> connections? I would like
>> to see where exactly that is achieved in the code, if someone can please
>> me give me a hint. Thanks in advance :)
>>
>> Regards
>>
>
> open-iscsi does not use multi-queue specifically, though all of the block
> layer is now converted to using multi-queue. If I understand correctly,
> there is no more single-queue, but there is glue that allows existing
> single-queue drivers to continue on, mapping their use to multi-queue.
> (Someone please correct me if I'm wrong.)
>
> The only time multi-queue might be useful for open-iscsi to use would be
> for MCS -- multiple connections per session. But the implementation of
> multi-queue makes using it for MCS problematic. Because each queue is on a
> different CPU, open-iscsi would have to coordinate the multiple connections
> across multiple CPUs, making things like ensuring correct sequence numbers
> difficult.
>
> Hope that helps. I _believe_ there is still an effort to map open-iscsi
> MCS to multi-queue, but nobody has tried to actually do it yet that I know
> of. The goal, of course, is better throughput using MCS.
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/8f236c4a-a207-4a0e-8dff-ad14a74e57dc%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/8f236c4a-a207-4a0e-8dff-ad14a74e57dc%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EbuwXpvxzTnaGtq3URrfhC4aUvX0%2B4zKat3A2STrON5%3Dg%40mail.gmail.com.

--00000000000064fdda059cd828d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0=C2=A0<div><br></div><div>=C2=A0Thanks for send=
ing this.=C2=A0 I too believe this is how it works and given the current pe=
rformance of OiS it&#39;s certainly not single threaded per iSCSI session, =
and with multiple iSCSI sessions over different NICs, connecting into multi=
pathd,=C2=A0 performance and redundancy needs are met for the vast majority=
 of SAN applications.=C2=A0=C2=A0</div><div>=C2=A0</div><div>=C2=A0Often th=
e bottleneck is the backend storage given the interface speeds available to=
day for iSCSI.=C2=A0 =C2=A0 Especially as you add more hosts. since the IO =
load as seen by storage is typically very random.</div><div><br></div><div>=
=C2=A0Regards,=C2=A0</div><div>Don=C2=A0</div><div><br></div><div><br></div=
><div>=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, Jan 23, 2020 at 4:51 PM The Lee-Man &lt;<a href=
=3D"mailto:leeman.duncan@gmail.com">leeman.duncan@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>On Wednesday, January 15, 2020 at 7:16:48 AM UTC-8, Bobby wrote:<blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div><div>Hi a=
ll,</div><div><br></div><div>I have a question regarding multi-queue in iSC=
SI. AFAIK, <b>scsi-mq</b> has been functional in kernel since kernel 3.17. =
Because earlier,</div><div>the block layer was updated to multi-queue <b>bl=
k-mq</b>=C2=A0from single-queue. So the current kernel has full-fledged <b>=
multi-queues</b>.</div><div><br></div><div>The question is:</div><div><br><=
/div><div>How an iSCSI initiator uses multi-queue? Does it mean having mult=
iple connections? I would like=C2=A0</div></div><div>to see where exactly t=
hat is achieved in the code, if someone can please me give me a hint. Thank=
s in advance :)</div><div><br></div><div>Regards<br></div></div></blockquot=
e><div><br></div><div>open-iscsi does not use multi-queue specifically, tho=
ugh all of the block layer is now converted to using multi-queue. If I unde=
rstand correctly, there is no more single-queue, but there is glue that all=
ows existing single-queue drivers to continue on, mapping their use to mult=
i-queue. (Someone please correct me if I&#39;m wrong.)</div><div><br></div>=
<div>The only time multi-queue might be useful for open-iscsi to use would =
be for MCS -- multiple connections per session. But the implementation of m=
ulti-queue makes using it for MCS problematic. Because each queue is on a d=
ifferent CPU, open-iscsi would have to coordinate the multiple connections =
across multiple CPUs, making things like ensuring correct sequence numbers =
difficult.</div><div><br></div><div>Hope that helps. I _believe_ there is s=
till an effort to map open-iscsi MCS to multi-queue, but nobody has tried t=
o actually do it yet that I know of. The goal, of course, is better through=
put using MCS.<br></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8f236c4a-a207-4a0e-8dff-ad14a74e57dc%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/8f236c4a-a207-4a0e-8dff-ad14a74e57dc%40g=
ooglegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EbuwXpvxzTnaGtq3URrfhC4aUvX0%2B4zKat3A2STrON5%3=
Dg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/open-iscsi/CAK3e-EbuwXpvxzTnaGtq3URrfhC4aUvX0%2B4zKat3A2=
STrON5%3Dg%40mail.gmail.com</a>.<br />

--00000000000064fdda059cd828d3--
