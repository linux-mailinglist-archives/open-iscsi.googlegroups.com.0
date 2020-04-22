Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBZEUQD2QKGQEQMR7TSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 597791B3AE2
	for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 11:12:06 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id m2sf1208723ilb.21
        for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 02:12:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587546725; cv=pass;
        d=google.com; s=arc-20160816;
        b=RSSNDhLbmy5jdfh6oOn9++rxD7Te24gh1EES9vjBv/4212Uuslyjofa9Or4JPW2UqL
         98beF34FxTgekWq6L/Oxbzd2xh/ubMw5FR4u7mOxH8fp4jR+LhxUjM5fpeZtekJqEuNK
         AtyGy8YLYKNl8HORCgmva1EOnLqFXrrgnfYm+palKEETYl0VPFo5kj4fp7WprVWQ1eRd
         fdtugvzmcLRmO4W14/Zv1eEhgbZYxSOPLS6Y6FM3kPDA8T2vSJCFTDe8H48I8Cj7NTbJ
         W+cHln1nN9352B6jkLMH78t6kYzq3NOlrWcwkd5nbee5OGaErQHpZ3v59d5SIkdIu3+V
         aDpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/8AAkv4aX+jCBklAAHaIDfeTFvktUyLNEUybC7bYM3A=;
        b=g4/DjD7RKiklEK9YEu8/+YA67nC24/6+gOAeehsldwKymcA9VP3FBFzhDVEJYHyHe7
         3hy8EKlqjxz28x7XBlXWkY6ESxx7/OBwcuRdVRHDDZ4UvTGPTEF5FulYZYtB1g/CDUNA
         eDL+dOVTq4rMcktA+I/2pBKJ5WLLrpPDYOZKY0Z8BSISnY9lMqP3d2zSpseK8DpQ+sUh
         3e+Jyzfo8Lt5mUG7FYMVIiRRaD0i4lG7qyPDPjW42KSRpMvZJGs6JflzYsOZuObi7Kyx
         beRCus9O+7t6b3k5dR6ZNKnAUx1WcDpFuIAV4IOmnwaPJPBgPwVbEAUUHasOBiOCmvYU
         ofdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJkcwtjy;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/8AAkv4aX+jCBklAAHaIDfeTFvktUyLNEUybC7bYM3A=;
        b=FqPMQmmiYoukvgLjfs7xZx4/8j5lwEQhT/3yP4tW6dp6PlM+8Tk/9fQH4nMEpduBzZ
         NG+fGQHijBiPvqHr0cQfCCeU5guS33nLCDr9JSPH+RgzziJT3l6nKISko1qdrOcaFD2B
         k5+oar39CHQgw04Q0TKuxKf4Kdlh1uE9ASfsQocIpOS5Z/V6O00y6gYbdRxynp2W4TWM
         TolEkEfWfx/M389hIlNS9be4KyEg5N2DzbLeqBycMJkTe6LKtL+XI0V3RtWBW5Ka2N7g
         y69g+67wYaGevMan3QuC+Kgppd0o6HVQQfYG0lg1Toob++JxSILTk2BvlYgDUQ8/ii0N
         qMng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/8AAkv4aX+jCBklAAHaIDfeTFvktUyLNEUybC7bYM3A=;
        b=RxhYZyd6Oqwl9S1/UtxIRZWlvbZvTLqCWWrL2RVcpUHYBAVCGvtbJInDJplMjJAUQc
         l4+rYYnqlfWZQf6RRnCt1dk2LPRj988L1bUJqHgqNuVC92X1uWumEXIxXrZQrkN/zK5H
         JoGEQ5YOOQTszlqkCrr29cjBUO/zUrAHTv8HitfaQCTIgrnALR0efygw67vDIvrRp0T4
         DEoxFqFMikzxIIPtV5J6aQmc/CbxaRPB4LiAlZXHaW1ytgRzVuo1xL0d/yxiq3DCmxU2
         K9EsnsXh9l/jWhbgQHTo2QCurQO36DXBJQCFbKbYBlK7YCzpQYpGd+B02P+EuD8odcWD
         yw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/8AAkv4aX+jCBklAAHaIDfeTFvktUyLNEUybC7bYM3A=;
        b=pQKHfUhHQe9+5Aqkar2CMs1zOLTX3ikXccfYK6gj9cAV3R+pxDY5dc7feny7nJKHGQ
         X7EOVjCc9MAkNdg7sRg/eSgcNqqTLkkX6GwLDtdyv4IKCSPHaUkfHC32ZK9PbXuKHFD5
         gy0OYgxPqS9NvBZ1Mn9r7Ssocf21k/vNEfLvmBQ5fnzkbsnCzfVs/vWqZ7S7YDAk3HO5
         YVHEDah07ZRjNrPSgGvAGQSny9gjYKhQQ9Q2sn1ZaJTaXrNArEdVoS0xZ502TbEHTWgq
         Sp2RoufsBzaOsY3L6hC9xAzKGd31SESkn9oX+SnAIe1VXO4CI+wPQDIkYK9qihx0v7CX
         3L6w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0Pubg07M9lKfieuLMhU7ns1tLaVg5aMk1XIqeV5s5yg8jVluYXma8
	wFuWKR/c/quMo+yVjUF7f/0=
X-Google-Smtp-Source: APiQypKYRV4WrEiyje8hLx0Q+htbg/xUwwtlgt9OG1WZ+zzWM2WMTc9CURPmmBxkpQ3Rl5P6f8s0Dw==
X-Received: by 2002:a02:5184:: with SMTP id s126mr23478350jaa.81.1587546725056;
        Wed, 22 Apr 2020 02:12:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:3a05:: with SMTP id h5ls784120ila.1.gmail; Wed, 22 Apr
 2020 02:12:04 -0700 (PDT)
X-Received: by 2002:a92:4152:: with SMTP id o79mr4160391ila.198.1587546724616;
        Wed, 22 Apr 2020 02:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587546724; cv=none;
        d=google.com; s=arc-20160816;
        b=pDyuSqJcUAFfgtt7ywa2wH5GbhX98E7/X+sVkiILlFs21STdVl+yxso6KWNyqu8oDS
         2Bt2SQNUjCSVETjieYdWHcLaI4RkF2iljd+hFrVe5m3OCOhqgRWnO0HDZ26/D8lOMMcV
         HaLwg+qjokzQJWX+n4lR97vlxeC7UhZ/ZIj0ABA/VpUCIE5v6YVlmueu+IYMdi287j6F
         mF/ksATISVV/tAcJHJ3TCBvDZ065870YRfuUDSjsUHlag2lRxN8YYNKO1FDgj1uyHJIy
         mqVCq62n8Sq0OxS5X3DYyA8oigYIuYf0+DzgCP+hPY33HtuuMhk7BlB9wFnT0EndN9DL
         9dHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=tY//pQQA1SqYC1SOXBcB62oIuDDcYKtKH4ubvWi3mOM=;
        b=ULMMU8zJM98a+p6CoCvz6ccn2recqgKihogFsGShfW6RdWALKYtF0B/scjqHL57Spw
         3RnRo1FCr0VxQGsMMBUugz1K4dFFJbjob+tDQWH8neJraNIFI6HQfXsaE7PQBygZqxSH
         IrsAlZHc3/MnNqrMwZO+A4jMlMbsHmM0JX/gd7ztN+VeReFxrILnjDXvMNw0U9Zd4H1M
         shTMN22DlnxIxiuVFcXuw5amrt9D+p8pE/aOSjYQwPynM5Rz7ovmnk2wODYvoYZz8evk
         G0Vm4xdksv0vveWHO6Hw9d87oH0jKBlI3Ewo6yPdr/QcBmDteLeynsXVWTYUVGWV2UpH
         NiLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJkcwtjy;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id g17si503782ioe.0.2020.04.22.02.12.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 02:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id w20so1577748iob.2
        for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 02:12:04 -0700 (PDT)
X-Received: by 2002:a6b:c9c9:: with SMTP id z192mr24288478iof.134.1587546724044;
 Wed, 22 Apr 2020 02:12:04 -0700 (PDT)
MIME-Version: 1.0
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com> <30147_1587494977_5E9F4041_30147_801_1_CAK3e-EawwxYGb3Gw74+P-yBmrnE0ktOL=Fj1OT_LEQ+CZyZUkg@mail.gmail.com>
 <5E9FEC8E020000A1000387D7@gwsmtp.uni-regensburg.de>
In-Reply-To: <5E9FEC8E020000A1000387D7@gwsmtp.uni-regensburg.de>
From: Donald Williams <don.e.williams@gmail.com>
Date: Wed, 22 Apr 2020 05:11:53 -0400
Message-ID: <CAK3e-EbBaqnn89HTJ4D8beY9KGCJ_jYwFXOFgR4qW59QPn0DFQ@mail.gmail.com>
Subject: Re: [EXT] Re: udev events for iscsi
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008d156d05a3dd862b"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EJkcwtjy;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--0000000000008d156d05a3dd862b
Content-Type: text/plain; charset="UTF-8"

Hello

 Re: Errors  That's likely from a bad / copy paste.  I referenced the
source document I took that from.  That was done against an older RHEL
kernel.

 Don


On Wed, Apr 22, 2020 at 3:04 AM Ulrich Windl <
Ulrich.Windl@rz.uni-regensburg.de> wrote:

> >>> Donald Williams <don.e.williams@gmail.com> schrieb am 21.04.2020 um
> 20:49 in
> Nachricht
>
> <30147_1587494977_5E9F4041_30147_801_1_CAK3e-EawwxYGb3Gw74+P-yBmrnE0ktOL=Fj1OT_L
> Q+CZyZUkg@mail.gmail.com>:
> > Hello,
> >
> >  If the loss exceeds the timeout value yes.  If the 'drive' doesn't come
> > back in 30 to 60 seconds it's not likely a transitory event like a cable
> > pull.
> >
> > NOOP-IN and NOOP-OUT are also know as KeepAlive.  That's when the
>
> Actually I think that's two different mechanisms: Keepalive just prevents
> the connection from being discarded (some firewall like to do that), while
> the No_op actually is an end-to-end (almost at least) connection test.
>
> > connection is up but the target or initiator isn't responding.   If those
> > timeout the connection will be dropped and a new connection attempt made.
>
> I think the original intention for SCSI timeouts was to conclude a device
> has failed if it does not respond within time (actually there are different
> timeouts depending on the operation (like the famous rewinding of a long
> tape)). Next step for the OS would be to block I/O to a seemingly failed
> device. Recent operating systems like Linux have the choice to remove the
> device logically, requiring it to re-appear before it can be used. In some
> cases it seems preferrable to keep the device, because otherwise there
> could be a cascading effect like killing processes that have the device
> open (UNIX processes do not like it when opened devices suddenly disappear).
>
> Regards,
> Ulrich
>
> >
> >  Don
> >
> >
> > On Tue, Apr 21, 2020 at 2:44 PM The Lee-Man <leeman.duncan@gmail.com>
> wrote:
> >
> >> On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wrote:
> >>>
> >>> [reposting, as the previous one seems to be lost]
> >>>
> >>> Hi all,
> >>> I have a question regarding udev events when using iscsi disks.
> >>>
> >>> By using "udevadm monitor" I can see that events are generated when I
> >>> login and logout from an iscsi portal/resource, creating/destroying the
> >>> relative links under /dev/
> >>>
> >>> However, I can not see anything when the remote machine simple
> >>> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout
> expiring, I
> >>> don't see anything about a removed disk (and the links under /dev/
> remains
> >>> unaltered, indeed). At the same time, when the remote machine and disk
> >>> become available again, no reconnection events happen.
> >>>
> >>
> >> Because of the design of iSCSI, there is no way for the initiator to
> know
> >> the server has gone away. The only time an initiator might figure this
> out
> >> is when it tries to communicate with the target.
> >>
> >> This assumes we are not using some sort of directory service, like iSNS,
> >> which can send asynchronous notifications. But even then, the iSNS
> server
> >> would have to somehow know that the target went down. If the target
> >> crashed, that might be difficult to ascertain.
> >>
> >> So in the absence of some asynchronous notification, the initiator only
> >> knows the target is not responding if it tries to talk to that target.
> >>
> >> Normally iscsid defaults to sending periodic NO-OPs to the target every
> 5
> >> seconds. So if the target goes away, the initiator usually notices,
> even if
> >> no regular I/O is occurring.
> >>
> >> But this is where the error recovery gets tricky, because iscsi tries to
> >> handle "lossy" connections. What if the server will be right back? Maybe
> >> it's rebooting? Maybe the cable will be plugged back in? So iscsi keeps
> >> trying to reconnect. As a matter of fact, if you stop iscsid and restart
> >> it, it sees the failed connection and retries it -- forever, by
> default. I
> >> actually added a configuration parameter called reopen_max, that can
> limit
> >> the number of retries. But there was pushback on changing the default
> value
> >> from 0, which is "retry forever".
> >>
> >> So what exactly do you think the system should do when a connection
> "goes
> >> away"? How long does it have to be gone to be considered gone for good?
> If
> >> the target comes back "later" should it get the same disc name? Should
> we
> >> retry, and if so how much before we give up? I'm interested in your
> views,
> >> since it seems like a non-trivial problem to me.
> >>
> >>>
> >>> I can read here that, years ago, a patch was in progress to give better
> >>> integration with udev when a device disconnects/reconnects. Did the
> patch
> >>> got merged? Or does the one I described above remain the expected
> behavior?
> >>> Can be changed?
> >>>
> >>
> >> So you're saying as soon as a bad connection is detected (perhaps by a
> >> NOOP), the device should go away?
> >>
> >>>
> >>> Thanks.
> >>>
> >> --
> >> You received this message because you are subscribed to the Google
> Groups
> >> "open-iscsi" group.
> >> To unsubscribe from this group and stop receiving emails from it, send
> an
> >> email to open-iscsi+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit
> >>
> >
> https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd28429
> > 5c22%40googlegroups.com
> >>
> > <
> https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd28429
> > 5c22%40googlegroups.com?utm_medium=email&utm_source=footer>
> >> .
> >>
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups
> > "open-iscsi" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an
> > email to open-iscsi+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> >
> https://groups.google.com/d/msgid/open-iscsi/CAK3e-EawwxYGb3Gw74%2BP-yBmrnE0k
> > tOL%3DFj1OT_LEQ%2BCZyZUkg%40mail.gmail.com.
>
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/5E9FEC8E020000A1000387D7%40gwsmtp.uni-regensburg.de
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EbBaqnn89HTJ4D8beY9KGCJ_jYwFXOFgR4qW59QPn0DFQ%40mail.gmail.com.

--0000000000008d156d05a3dd862b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0<div><br></div><div>=C2=A0Re: Errors=C2=A0 That=
&#39;s likely from a bad / copy paste.=C2=A0 I referenced the source docume=
nt I took that from.=C2=A0 That was done against an older RHEL kernel.=C2=
=A0</div><div><br></div><div>=C2=A0Don=C2=A0</div><div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Ap=
r 22, 2020 at 3:04 AM Ulrich Windl &lt;<a href=3D"mailto:Ulrich.Windl@rz.un=
i-regensburg.de">Ulrich.Windl@rz.uni-regensburg.de</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">&gt;&gt;&gt; Donald Willi=
ams &lt;<a href=3D"mailto:don.e.williams@gmail.com" target=3D"_blank">don.e=
.williams@gmail.com</a>&gt; schrieb am 21.04.2020 um 20:49 in<br>
Nachricht<br>
&lt;30147_1587494977_5E9F4041_30147_801_1_CAK3e-EawwxYGb3Gw74+P-yBmrnE0ktOL=
=3DFj1OT_L<br>
<a href=3D"mailto:Q%2BCZyZUkg@mail.gmail.com" target=3D"_blank">Q+CZyZUkg@m=
ail.gmail.com</a>&gt;:<br>
&gt; Hello,<br>
&gt; <br>
&gt;=C2=A0 If the loss exceeds the timeout value yes.=C2=A0 If the &#39;dri=
ve&#39; doesn&#39;t come<br>
&gt; back in 30 to 60 seconds it&#39;s not likely a transitory event like a=
 cable<br>
&gt; pull.<br>
&gt; <br>
&gt; NOOP-IN and NOOP-OUT are also know as KeepAlive.=C2=A0 That&#39;s when=
 the<br>
<br>
Actually I think that&#39;s two different mechanisms: Keepalive just preven=
ts the connection from being discarded (some firewall like to do that), whi=
le the No_op actually is an end-to-end (almost at least) connection test.<b=
r>
<br>
&gt; connection is up but the target or initiator isn&#39;t responding.=C2=
=A0 =C2=A0If those<br>
&gt; timeout the connection will be dropped and a new connection attempt ma=
de.<br>
<br>
I think the original intention for SCSI timeouts was to conclude a device h=
as failed if it does not respond within time (actually there are different =
timeouts depending on the operation (like the famous rewinding of a long ta=
pe)). Next step for the OS would be to block I/O to a seemingly failed devi=
ce. Recent operating systems like Linux have the choice to remove the devic=
e logically, requiring it to re-appear before it can be used. In some cases=
 it seems preferrable to keep the device, because otherwise there could be =
a cascading effect like killing processes that have the device open (UNIX p=
rocesses do not like it when opened devices suddenly disappear).<br>
<br>
Regards,<br>
Ulrich<br>
<br>
&gt; <br>
&gt;=C2=A0 Don<br>
&gt; <br>
&gt; <br>
&gt; On Tue, Apr 21, 2020 at 2:44 PM The Lee-Man &lt;<a href=3D"mailto:leem=
an.duncan@gmail.com" target=3D"_blank">leeman.duncan@gmail.com</a>&gt; wrot=
e:<br>
&gt; <br>
&gt;&gt; On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wr=
ote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; [reposting, as the previous one seems to be lost]<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt; I have a question regarding udev events when using iscsi disks=
.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; By using &quot;udevadm monitor&quot; I can see that events are=
 generated when I<br>
&gt;&gt;&gt; login and logout from an iscsi portal/resource, creating/destr=
oying the<br>
&gt;&gt;&gt; relative links under /dev/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; However, I can not see anything when the remote machine simple=
<br>
&gt;&gt;&gt; dies/reboots/disconnects: while &quot;dmesg&quot; shows the is=
csi timeout expiring, I<br>
&gt;&gt;&gt; don&#39;t see anything about a removed disk (and the links und=
er /dev/ remains<br>
&gt;&gt;&gt; unaltered, indeed). At the same time, when the remote machine =
and disk<br>
&gt;&gt;&gt; become available again, no reconnection events happen.<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Because of the design of iSCSI, there is no way for the initiator =
to know<br>
&gt;&gt; the server has gone away. The only time an initiator might figure =
this out<br>
&gt;&gt; is when it tries to communicate with the target.<br>
&gt;&gt;<br>
&gt;&gt; This assumes we are not using some sort of directory service, like=
 iSNS,<br>
&gt;&gt; which can send asynchronous notifications. But even then, the iSNS=
 server<br>
&gt;&gt; would have to somehow know that the target went down. If the targe=
t<br>
&gt;&gt; crashed, that might be difficult to ascertain.<br>
&gt;&gt;<br>
&gt;&gt; So in the absence of some asynchronous notification, the initiator=
 only<br>
&gt;&gt; knows the target is not responding if it tries to talk to that tar=
get.<br>
&gt;&gt;<br>
&gt;&gt; Normally iscsid defaults to sending periodic NO-OPs to the target =
every 5<br>
&gt;&gt; seconds. So if the target goes away, the initiator usually notices=
, even if<br>
&gt;&gt; no regular I/O is occurring.<br>
&gt;&gt;<br>
&gt;&gt; But this is where the error recovery gets tricky, because iscsi tr=
ies to<br>
&gt;&gt; handle &quot;lossy&quot; connections. What if the server will be r=
ight back? Maybe<br>
&gt;&gt; it&#39;s rebooting? Maybe the cable will be plugged back in? So is=
csi keeps<br>
&gt;&gt; trying to reconnect. As a matter of fact, if you stop iscsid and r=
estart<br>
&gt;&gt; it, it sees the failed connection and retries it -- forever, by de=
fault. I<br>
&gt;&gt; actually added a configuration parameter called reopen_max, that c=
an limit<br>
&gt;&gt; the number of retries. But there was pushback on changing the defa=
ult value<br>
&gt;&gt; from 0, which is &quot;retry forever&quot;.<br>
&gt;&gt;<br>
&gt;&gt; So what exactly do you think the system should do when a connectio=
n &quot;goes<br>
&gt;&gt; away&quot;? How long does it have to be gone to be considered gone=
 for good? If<br>
&gt;&gt; the target comes back &quot;later&quot; should it get the same dis=
c name? Should we<br>
&gt;&gt; retry, and if so how much before we give up? I&#39;m interested in=
 your views,<br>
&gt;&gt; since it seems like a non-trivial problem to me.<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I can read here that, years ago, a patch was in progress to gi=
ve better<br>
&gt;&gt;&gt; integration with udev when a device disconnects/reconnects. Di=
d the patch<br>
&gt;&gt;&gt; got merged? Or does the one I described above remain the expec=
ted behavior?<br>
&gt;&gt;&gt; Can be changed?<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; So you&#39;re saying as soon as a bad connection is detected (perh=
aps by a<br>
&gt;&gt; NOOP), the device should go away?<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks.<br>
&gt;&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; You received this message because you are subscribed to the Google=
 Groups<br>
&gt;&gt; &quot;open-iscsi&quot; group.<br>
&gt;&gt; To unsubscribe from this group and stop receiving emails from it, =
send an<br>
&gt;&gt; email to <a href=3D"mailto:open-iscsi%2Bunsubscribe@googlegroups.c=
om" target=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
&gt;&gt; To view this discussion on the web visit<br>
&gt;&gt; <br>
&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-=
4872-8d1a-5cd28429" rel=3D"noreferrer" target=3D"_blank">https://groups.goo=
gle.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd28429</a> <br>
&gt; 5c22%<a href=3D"http://40googlegroups.com" rel=3D"noreferrer" target=
=3D"_blank">40googlegroups.com</a><br>
&gt;&gt; <br>
&gt; &lt;<a href=3D"https://groups.google.com/d/msgid/open-iscsi/7f583720-8=
a84-4872-8d1a-5cd28429" rel=3D"noreferrer" target=3D"_blank">https://groups=
.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd28429</a> <br>
&gt; 5c22%<a href=3D"http://40googlegroups.com?utm_medium=3Demail&amp;utm_s=
ource=3Dfooter" rel=3D"noreferrer" target=3D"_blank">40googlegroups.com?utm=
_medium=3Demail&amp;utm_source=3Dfooter</a>&gt;<br>
&gt;&gt; .<br>
&gt;&gt;<br>
&gt; <br>
&gt; -- <br>
&gt; You received this message because you are subscribed to the Google Gro=
ups <br>
&gt; &quot;open-iscsi&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an <br>
&gt; email to <a href=3D"mailto:open-iscsi%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <br>
&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/CAK3e-EawwxYGb=
3Gw74%2BP-yBmrnE0k" rel=3D"noreferrer" target=3D"_blank">https://groups.goo=
gle.com/d/msgid/open-iscsi/CAK3e-EawwxYGb3Gw74%2BP-yBmrnE0k</a> <br>
&gt; tOL%3DFj1OT_LEQ%2BCZyZUkg%<a href=3D"http://40mail.gmail.com" rel=3D"n=
oreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
<br>
<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi%2Bunsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5E9FEC8E020000A1000387D7%40gwsmtp.uni-regensburg.de" =
rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/open=
-iscsi/5E9FEC8E020000A1000387D7%40gwsmtp.uni-regensburg.de</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EbBaqnn89HTJ4D8beY9KGCJ_jYwFXOFgR4qW59QPn0DFQ%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAK3e-EbBaqnn89HTJ4D8beY9KGCJ_jYwFXOFgR4qW59QPn0D=
FQ%40mail.gmail.com</a>.<br />

--0000000000008d156d05a3dd862b--
