Return-Path: <open-iscsi+bncBC755V5RXMKBBOUS2TUAKGQEWJNTFHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F3A589C2
	for <lists+open-iscsi@lfdr.de>; Thu, 27 Jun 2019 20:21:47 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id z16sf3295735qto.10
        for <lists+open-iscsi@lfdr.de>; Thu, 27 Jun 2019 11:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1/ylNwVFNY9TEV1LOJiAGTIsRMjZiWuEZFivCEcZtDg=;
        b=s5/G4P09WX0lzSdQoHQR0pxKWAzUvQHmauVQP5/JOZZGVe7GQyeEdbRVsGzU6ETibv
         lbWHfd0bPqn1Z5NqCsClqCoF4cB6BjL9/jXw/0QgJkiqCEPPRHaKZyqf/+J5rhpbV5YI
         7/cv6LbpFJgOyWnYoEv85puOJDaQt1TZE+XXa7Ib96m00ta4EKxhk3nj5ZSINLLIxP89
         cYpjBEEsVIUPje/k5O588zwbSdDx7zQOUTPXa8hKjijSX+eD9u4Zk6C6OmkZIj5rYq7H
         5+xwLr8/WyDDn3UMMmYbRPwun17DMtLXZjnIcXeWQ3WzylA9m2ZsaP9SnGT7ZAGK6v88
         zKuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1/ylNwVFNY9TEV1LOJiAGTIsRMjZiWuEZFivCEcZtDg=;
        b=XEWLRCF4EqzlQI0ety1I5FbbV6C9TZ99SPylqM5DZ2mdCKqgnni6clKDwVeARdIlCR
         TL+9sAo8Cq5CFE0RtD7pLdN8NR8IqbkqB7JymoYT0CzWYz1dtTnu68KPEC9ixO/N0W6x
         MfhC/9XJrB+OeHQHVAd1byaxFZ++VThHonHf2mpEc79sNNwM9rzwvR/angrHoPVCXHbY
         SywmoSEqVlJAvdQn6w8AvB36Npj5CTNJR2SFgMYRFM7NKVLO47G8BHT0UecjWf4GRz9t
         waPvHJQ2BQGzYzyu+WMJch7mYGialJ9Jr8j7QGjc2Q2FL5UnTcAcLjr4O6SHVAcIFXnt
         1Xiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1/ylNwVFNY9TEV1LOJiAGTIsRMjZiWuEZFivCEcZtDg=;
        b=M9Da4IRro5kVKpzTpfLg+feyANsyAyg53HyfW+m3pi7Bn5W7jnaZndkjOJOOHf3rPb
         XemUIwZYUy8ihhSc3Hw1TrWfnHQTaiiwgQhaVNoVaozp6xf1RZ5LcGaIUZGJKHzYFekk
         oKviTfthsp/5LOUn0j4VKfmLpoUt7fh1vyDntOkOH/V52PDQn1MI+u4d5A2HBoHkB2YG
         oSEFe2O9muSYdWqRDB8cSO06xeHsZAAwh+YFfzTq1dGTyx8EfK9PtPpTLCBOhd1jAdy2
         cwubzhs6Tol0/OgvAQEGF4V+cthiWaLZfpfTChczuMtnYoZINGdOLBIZAgiA0ZVFRMFt
         Pg+w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAU31X5xbYNbvk5fX0k5c7ko4XnUAbIrL8QVnENnNOUezFzXC7ul
	66EuRUw3+NrjQhJ9gv74PxY=
X-Google-Smtp-Source: APXvYqzpHwKhIhrvz3rJvXcXZRCC6Ay5Eaqb+3wUzk5D2eAR/TLv+uGr0O5AKtbc5gzl3RAkaO3Wqg==
X-Received: by 2002:aed:353d:: with SMTP id a58mr4432877qte.42.1561659706218;
        Thu, 27 Jun 2019 11:21:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:21fd:: with SMTP id m58ls2805qtc.10.gmail; Thu, 27 Jun
 2019 11:21:46 -0700 (PDT)
X-Received: by 2002:ac8:2d19:: with SMTP id n25mr4507670qta.180.1561659705882;
        Thu, 27 Jun 2019 11:21:45 -0700 (PDT)
Date: Thu, 27 Jun 2019 11:21:45 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <485a70e6-e456-42d3-ad52-9f1e570cff0a@googlegroups.com>
In-Reply-To: <CAAixNYGu7RLUwvYZvFV8LzuorUcAXpwjXbuA6PqoeZmDL1rX1g@mail.gmail.com>
References: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
 <2604ac31-fea0-4963-9077-1942c71f8a85@googlegroups.com> <37c0b6be-68ec-474e-b95d-e9450bfc4000@googlegroups.com>
 <8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76@googlegroups.com>
 <CAAixNYGu7RLUwvYZvFV8LzuorUcAXpwjXbuA6PqoeZmDL1rX1g@mail.gmail.com>
Subject: Re: Open-iscsi slow boot
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_543_1966099929.1561659705352"
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

------=_Part_543_1966099929.1561659705352
Content-Type: multipart/alternative; 
	boundary="----=_Part_544_1387255104.1561659705352"

------=_Part_544_1387255104.1561659705352
Content-Type: text/plain; charset="UTF-8"

On Thursday, June 27, 2019 at 11:44:11 AM UTC-4, Randy Broman wrote:
>
> I appreciate your interest, and I've attached a text file which I hope 
> is responsive to your request. 
>
> R 
>
> On Wed, Jun 26, 2019 at 8:55 AM The Lee-Man wrote: 
> > 
> > On Tuesday, June 25, 2019 at 11:31:03 AM UTC-4, Randy Broman wrote: 
> >> 
> >> Thanks for your response. I'm using Kubuntu 19.04. I disabled the iscsi 
> service and in fact the boot was much faster: 
> >> 
> >> 
> > I'm not understanding what's going on with your system. I suspect 
> there's more than just an unused open-iscsi initiator involved here. 
> > 
> > Do you have any iscsi targets set up? Existing sessions? 
> > 
> > I downloaded kunbuntu, and open-iscsi.service is enabled by default. Can 
> you give me the systemctl status for open-iscsi.service, iscsid.socket, and 
> iscsid.service? Also, an "ls" of /etc/iscsi/nodes and 
> /sys/class/iscsi_session? 
> > 
> > And please don't assume that the numbers that "systemd-analyze blame" 
> show -- they don't always mean what you think. Can you just please time the 
> boot (or reboot) sequence yourself, using the log files? 
> > 
> > On my test VM, I have iscsid.socket, iscsid.service, and 
> open-iscsi.service at their default settings, but I have never discovered 
> any targets, so I don't have any history of nodes or sessions. And when I 
> run "systemd-analyze blame", iscsi does not show up at all. 
> > 
>
>
Your error messages make it clear that you are having initiator/target 
issues. If you look at the status of the open-iscsi.service unit, you can 
see it waits for the target to connect, then times out. Timing out always 
adds lots of time to a boot process.

It seems there is some issue with your "QNAP Target". I cannot help you 
with that. But you might want to check there for error messages, if there 
is some way to do that.


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/485a70e6-e456-42d3-ad52-9f1e570cff0a%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_544_1387255104.1561659705352
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thursday, June 27, 2019 at 11:44:11 AM UTC-4, Randy Bro=
man wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">I appreciate your in=
terest, and I&#39;ve attached a text file which I hope
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
><div> <br></div></div>

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
om/d/msgid/open-iscsi/485a70e6-e456-42d3-ad52-9f1e570cff0a%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/485a70e6-e456-42d3-ad52-9f1e570cff0a%40googlegroups.com</a>.<b=
r />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_544_1387255104.1561659705352--

------=_Part_543_1966099929.1561659705352--
