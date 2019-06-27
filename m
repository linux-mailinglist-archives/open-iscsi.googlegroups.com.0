Return-Path: <open-iscsi+bncBCG5HL4D24JBB2OW2TUAKGQEW46MMWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE9B58BF8
	for <lists+open-iscsi@lfdr.de>; Thu, 27 Jun 2019 22:47:38 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id d62sf3821293qke.21
        for <lists+open-iscsi@lfdr.de>; Thu, 27 Jun 2019 13:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MI1Dm4HijdmUrlETnHWDfyzt265Ryar0vxC0GV3FtHc=;
        b=g9Jv8tqcbaCAuJlHp4pWtgZr+TwtjRbAUK0iju9WTYpNylUjeiDpkSHDVlLqHluut+
         n14hof3fHnWDgQo7iiVyulavA+XCH0YfCvhRlSdfcnAIQs5Y97R6/sRgKH5AKVXaHdso
         bMJ72gh5VboL/0WCRpuWBatK2JBKFs1FoGSlwtnUAtn6qEWRZYUJSow8rweuBnTVaghL
         RhCitj63O1gbudklFZ+0kgkaebGf3ZDez5AuXCyjlsTNLYkrmIJIODk0XDr7RduYarCf
         G5/k104pAkKCXwAPtZTsKTgHYR7BoLTFGTlfi7TKBrM1fzQ6k5SB2evJLkOaxUZFsxtY
         7GJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MI1Dm4HijdmUrlETnHWDfyzt265Ryar0vxC0GV3FtHc=;
        b=Q4efWWuPNWJyxofkmU1by2XynecyxFIc9wqUPDEOHrva6OXj094kA0ABSsK1hRRs91
         6QhJ1n/RhkvaBF29wJfHYGiG4DgDtcn9WVfz4uHSAZPrP0lrxSBwb4A0QLK69+mO5h1r
         DgDcF4JkZwLzBVu3n9aPKLFGwSGu/wB5ynrroGEAjVdRZvb/XObT1vERtXsz8FtnJid6
         E7XHCYkgfFZ+eieWQWYKqAyJ2lQDyQCcapoZhNCzK+terxDKmaRt70q2o0ixtCCFYRXi
         1eRokAYBxCC+hQjL49lIdOJEnnep7WnFWPcmE0P1vzsFC4m87pPnOJOre+S3BgZFbVw0
         25aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MI1Dm4HijdmUrlETnHWDfyzt265Ryar0vxC0GV3FtHc=;
        b=bxbpCrMpEm/tik4ziWz+5LDi1fi9ix4S5MIc6bTPlqXYhmMbaVPkrHPtsLWp6XkRTF
         xGdl+DTOglZoUG3Gf0TXjawtJo1DRlrkW04FL4Y6qVHflANkNltK2XmxS4VYnFYh7/hI
         6jL3BB2SJqzQDefS02idC/jQRa1l3kgttnnQkUC+FMPHKDW3If8MwbM732SS4wzkqhGX
         CQ5UNrVIzfUcAuOpoR9kZUf5jfzK4+hVBfv/qxbc6ECKhFnEThabSwm7uqSYWYPzBzCm
         cgwc9lAdgOwS9MEysUZeWNIDlKy7ZFwu0tGOqPVQMdDb9uEXADNWyeXj5kUzHDJ8cNLD
         RyBQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUA9QdAfxUfZ7wDkYIYgFx9+mzRjgu3DJehPsHO5sdLR/1rX/4M
	GtqAExMGQ1dknKScqlVH3sE=
X-Google-Smtp-Source: APXvYqxuHCbVoJtNICQYdVbswCapyMbERmGMig5Ffg5itY2JAuphwKcPKqmZsavwmAQy3tGFg+20Zg==
X-Received: by 2002:aed:3b94:: with SMTP id r20mr4867369qte.207.1561668457914;
        Thu, 27 Jun 2019 13:47:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:3f50:: with SMTP id q16ls119360qtf.6.gmail; Thu, 27 Jun
 2019 13:47:37 -0700 (PDT)
X-Received: by 2002:ac8:1978:: with SMTP id g53mr4967210qtk.3.1561668457427;
        Thu, 27 Jun 2019 13:47:37 -0700 (PDT)
Date: Thu, 27 Jun 2019 13:47:36 -0700 (PDT)
From: Randy Broman <randy.broman@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <e452fddf-5f5b-417f-9900-33e48d487b9e@googlegroups.com>
In-Reply-To: <485a70e6-e456-42d3-ad52-9f1e570cff0a@googlegroups.com>
References: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
 <2604ac31-fea0-4963-9077-1942c71f8a85@googlegroups.com> <37c0b6be-68ec-474e-b95d-e9450bfc4000@googlegroups.com>
 <8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76@googlegroups.com>
 <CAAixNYGu7RLUwvYZvFV8LzuorUcAXpwjXbuA6PqoeZmDL1rX1g@mail.gmail.com>
 <485a70e6-e456-42d3-ad52-9f1e570cff0a@googlegroups.com>
Subject: Re: Open-iscsi slow boot
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_562_1108468478.1561668456906"
X-Original-Sender: randy.broman@gmail.com
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

------=_Part_562_1108468478.1561668456906
Content-Type: multipart/alternative; 
	boundary="----=_Part_563_669250990.1561668456906"

------=_Part_563_669250990.1561668456906
Content-Type: text/plain; charset="UTF-8"

I understand your analysis and appreciate your help. I've now posted on a 
QNAP forum
to get help in diagnosis on that side. I'll post the solution here when I 
find it.

R

On Thursday, June 27, 2019 at 11:21:45 AM UTC-7, The Lee-Man wrote:
>
> On Thursday, June 27, 2019 at 11:44:11 AM UTC-4, Randy Broman wrote:
>>
>> I appreciate your interest, and I've attached a text file which I hope 
>> is responsive to your request. 
>>
>> R 
>>
>> On Wed, Jun 26, 2019 at 8:55 AM The Lee-Man wrote: 
>> > 
>> > On Tuesday, June 25, 2019 at 11:31:03 AM UTC-4, Randy Broman wrote: 
>> >> 
>> >> Thanks for your response. I'm using Kubuntu 19.04. I disabled the 
>> iscsi service and in fact the boot was much faster: 
>> >> 
>> >> 
>> > I'm not understanding what's going on with your system. I suspect 
>> there's more than just an unused open-iscsi initiator involved here. 
>> > 
>> > Do you have any iscsi targets set up? Existing sessions? 
>> > 
>> > I downloaded kunbuntu, and open-iscsi.service is enabled by default. 
>> Can you give me the systemctl status for open-iscsi.service, iscsid.socket, 
>> and iscsid.service? Also, an "ls" of /etc/iscsi/nodes and 
>> /sys/class/iscsi_session? 
>> > 
>> > And please don't assume that the numbers that "systemd-analyze blame" 
>> show -- they don't always mean what you think. Can you just please time the 
>> boot (or reboot) sequence yourself, using the log files? 
>> > 
>> > On my test VM, I have iscsid.socket, iscsid.service, and 
>> open-iscsi.service at their default settings, but I have never discovered 
>> any targets, so I don't have any history of nodes or sessions. And when I 
>> run "systemd-analyze blame", iscsi does not show up at all. 
>> > 
>>
>>
> Your error messages make it clear that you are having initiator/target 
> issues. If you look at the status of the open-iscsi.service unit, you can 
> see it waits for the target to connect, then times out. Timing out always 
> adds lots of time to a boot process.
>
> It seems there is some issue with your "QNAP Target". I cannot help you 
> with that. But you might want to check there for error messages, if there 
> is some way to do that.
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e452fddf-5f5b-417f-9900-33e48d487b9e%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_563_669250990.1561668456906
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I understand your analysis and appreciate your help. I&#39=
;ve now posted on a QNAP forum<div>to get help in diagnosis on that side. I=
&#39;ll post the solution here when I find it.</div><div><br></div><div>R<b=
r><br>On Thursday, June 27, 2019 at 11:21:45 AM UTC-7, The Lee-Man wrote:<b=
lockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;borde=
r-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">On Thursday, Ju=
ne 27, 2019 at 11:44:11 AM UTC-4, Randy Broman wrote:<blockquote class=3D"g=
mail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;=
padding-left:1ex">I appreciate your interest, and I&#39;ve attached a text =
file which I hope
<br>is responsive to your request.
<br>
<br>R
<br>
<br>On Wed, Jun 26, 2019 at 8:55 AM The Lee-Man wrote:
<br>&gt;
<br>&gt; On Tuesday, June 25, 2019 at 11:31:03 AM UTC-4, Randy Broman wrote=
:
<br>&gt;&gt;
<br>&gt;&gt; Thanks for your response. I&#39;m using Kubuntu 19.04. I disab=
led the iscsi service and in fact the boot was much faster:
<br>&gt;&gt;
<br>&gt;&gt;
<br>&gt; I&#39;m not understanding what&#39;s going on with your system. I =
suspect there&#39;s more than just an unused open-iscsi initiator involved =
here.
<br>&gt;
<br>&gt; Do you have any iscsi targets set up? Existing sessions?
<br>&gt;
<br>&gt; I downloaded kunbuntu, and open-iscsi.service is enabled by defaul=
t. Can you give me the systemctl status for open-iscsi.service, iscsid.sock=
et, and iscsid.service? Also, an &quot;ls&quot; of /etc/iscsi/nodes and /sy=
s/class/iscsi_session?
<br>&gt;
<br>&gt; And please don&#39;t assume that the numbers that &quot;systemd-an=
alyze blame&quot; show -- they don&#39;t always mean what you think. Can yo=
u just please time the boot (or reboot) sequence yourself, using the log fi=
les?
<br>&gt;
<br>&gt; On my test VM, I have iscsid.socket, iscsid.service, and open-iscs=
i.service at their default settings, but I have never discovered any target=
s, so I don&#39;t have any history of nodes or sessions. And when I run &qu=
ot;systemd-analyze blame&quot;, iscsi does not show up at all.
<br>&gt;
<br><br></blockquote><div><br></div><div>Your error messages make it clear =
that you are having initiator/target issues. If you look at the status of t=
he open-iscsi.service unit, you can see it waits for the target to connect,=
 then times out. Timing out always adds lots of time to a boot process.</di=
v><div><br></div><div>It seems there is some issue with your &quot;QNAP Tar=
get&quot;. I cannot help you with that. But you might want to check there f=
or error messages, if there is some way to do that.<br></div><div><br></div=
><div> <br></div></div></blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:open-iscsi@googlegro=
ups.com">open-iscsi@googlegroups.com</a>.<br />
Visit this group at <a href=3D"https://groups.google.com/group/open-iscsi">=
https://groups.google.com/group/open-iscsi</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/e452fddf-5f5b-417f-9900-33e48d487b9e%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/e452fddf-5f5b-417f-9900-33e48d487b9e%40googlegroups.com</a>.<b=
r />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_563_669250990.1561668456906--

------=_Part_562_1108468478.1561668456906--
