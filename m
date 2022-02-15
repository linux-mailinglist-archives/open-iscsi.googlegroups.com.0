Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBFNIV6IAMGQEBG56XZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD724B7016
	for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 17:26:00 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id q15-20020a92ca4f000000b002be3e7707ffsf13771362ilo.4
        for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 08:26:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644942359; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fd2GI7Pjo15AJEVO99HDLtTQOrwNp5KrcmZL9Xg4RpNHXFpm2riA/hlg6vtlc7cB13
         YLTmv/uoPjR+ZPfTtjsNZ4kAGfVInKKYSNyywNV9Hqm64ZFOset5SHvB+h73KPBh/pvV
         VGKNl1YCH87+yvsSY3KAZlsxmNSk+lh05+oYrj4029dj26LJokzyXaQ3wM/JkvMV4CFE
         97jssZLn31ZONNRPDaqgF4gPYOFKpgGa+KxpavVgEVMMJoFN30m5kY3+b9sCYKnY09Qe
         d1dgEUKSdlI38Y3p1ouGAQOF2pEtVaOuKNJ03ViSZ9bnathXMG/+WzC/LQ4ACK1Egdje
         r+ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=93gCkMKhif+UyATFqJyJCmhoN4J7Zpdjj9PQXjyk43A=;
        b=HWHYvGuPE6vgT0eBl652Eko3LZ+ZYZhtbw7aR348Lwjj72FY8zLz3wGHOMTj6LugGp
         r/oR6HKthK5Eb/iDqVuWyzvXG/wiWFjv+CR1tEsvcFkPoE1dsQxje1cx04wXHle+tNkQ
         ajVRWiIysdx9uzEy8kQDjWFoL/tsamgMQj9RrZ9HXMYvJY9sZpEO2T7tsH6r2WunTjIL
         a9WUk5vZiDsQl5Nz9Lkfvewz2mzMgh545aMu+HSKsryc0WnI6vwajaw2Gj/Q7iYk5AB3
         frA+EG5uXza0oDXy4wIgU3hnqrRBNSB9ZW9/oQnpvRB+eQA/LWSweFacWurAmnFdR8at
         sDhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fBwHd7wD;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=93gCkMKhif+UyATFqJyJCmhoN4J7Zpdjj9PQXjyk43A=;
        b=SSkbqibYTJ43snecHyezphqyZe3/1kKpPb5g/EvGU2p8jfod3LDDlLkWOnluJG1V4R
         Tp61jfvNQj5iR1Ee+ITnW8aDwXs/4ZezlG86mdD7JB+g53renMiBB8/sUvjHpTCG/jQf
         nAZ5cbRA8Ox3YQtpjYddHdbTTkRa501CndBb0pEnZC6RHrE/aeNGNCt6QXLwsf0LHxwh
         uGnKaBXbDZxiYPI6vIGFzQDINz/gziU2+WxNxLyAeqYw5R5ihCPbOfjEwuALWdYwLOCw
         mcQX2PTkn6N/+JVXR4LkwjxLzAdwI6GiABggGSBbgYrLd3gkfJuDsi7lVXBZIj1lvSdb
         amjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93gCkMKhif+UyATFqJyJCmhoN4J7Zpdjj9PQXjyk43A=;
        b=lhyNurLkKJWfVgBpu9nSBLc2aDUnADwvmLW6WvCgCMiBR7LIuCyxKjxXtHEvVlnPtr
         rBRNdFniWI1xJ1ix4zjMF0KV8c+AG0lXZysTphuDBkXVbyJ17Y22m5qrXuZMTolvrgxQ
         50LFbTTf5TVInnVW63OxVOUMN+eW917xyrjDhL8Shj4biVpFUagspqCsQhpTtfTwIstj
         c1wqJDjM9PIj2RLA/nFlG5a1GXI0e2xGzKTV0aWnllX7yKXJLTXjrmQQOLNFEMrxCXv7
         Nup37IBp5Bq3cwY8kreDWEWVKNRF2I08D/HYmhi9zdKjdXYOq9etHLNCdrjFGBlsCjb9
         P09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93gCkMKhif+UyATFqJyJCmhoN4J7Zpdjj9PQXjyk43A=;
        b=SRe0CRzQyDClUj2oDK7MR5aLwc9TA9wpob+7L2ePImrIUkZwiZtl3E3ApgcBYb6KAF
         NV1x37TFmKqyCIMK47i5LngRTh0G16d5htTvPPHNTWDTSDYo1JXBVeRnggSONeFK0+n7
         gxxV4hmeObI8Z1wJgYk/tHrwOylFXvbIqr+QstF/14z3f7D9Uiaqy00vJf/zIJIkdfd5
         l32W8Fn0JnaxKfGqjhKR2QkKLPDxLuS0M5OUo7OFLBQ6CTJPgqjxOf8eJ1jN9d1E36c4
         B1238byH5UAV0hwUCggblIjD0BQa0HrdOCC97itR9TZHUqXMST+RycHuAfd8tnz+ynhN
         2G1A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532E+EUTi1TlV/ufrU6XXc9oKTs1UjfGE0cKtkHT2lw+Kxil9gvK
	hKzOytc/0Gz0flRNEqCMmTI=
X-Google-Smtp-Source: ABdhPJz/lxL0E9FGBqLcs5bsh5CjX9+PFeZgTVrORWxVPqMiIRuLvAO2O28+xZkEJeHhgeNxSaRWAQ==
X-Received: by 2002:a05:6638:d8a:: with SMTP id l10mr3282768jaj.27.1644942358916;
        Tue, 15 Feb 2022 08:25:58 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1c8d:: with SMTP id w13ls633579ill.4.gmail; Tue, 15
 Feb 2022 08:25:57 -0800 (PST)
X-Received: by 2002:a05:6e02:2142:: with SMTP id d2mr3051528ilv.280.1644942357449;
        Tue, 15 Feb 2022 08:25:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1644942357; cv=none;
        d=google.com; s=arc-20160816;
        b=0gStOrLwrMu3hDn1G280fmI6Qyzhksrlb/wibHZvcQeaX+IPJjF9i++pCqzh8Pnw86
         JWDK7rvDnPwFQ+8pCw3lYBsPPmCtegP5XKbK12MJtfxdp4XVqvDje9WETCGPCY/o5B6Q
         U7eO5BMy5CJhLYh3wCT1XNdMIjA91QYjL77AoeAiu1eK2ryEBdVZ5WA4cJqGRvXuxZNY
         I0Jhf01MDhOPkRUxx6e4Z0RukiuTBAMkP3fQzDh4+pCmO4FKLho+e5ZvHr6+I4e6u1+Q
         /7Q0tv9GA6ysdHIyEa91ByskIYdjgcKt/hze8lTG8CfaMCiWaYsM0R639HagroWuBpQp
         NYPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X3ppC21bSUZkihxAtVWukCcb04TCvsFGaK3j6AN71Kc=;
        b=hKcu+tuIgBX/CXDwkaxQdYklc1npsadbz5FMqoW/Hs+lYg+R3wNRqovTGp4j0ADYqO
         XGw00QRI648Sv2+8vm0S3AsJaoPZImfSG7H/6lHGQIOOwNW8unSXngGQ2FRk/fc1YUme
         SKTSULZhuwz1QvIqAFssA/rI1vm7ZCt0rcZZMTvLcvDngRkJdsZxikQM5ckk14jOn8yd
         2BHGMWWj+efYay8RT0VuggNFl3EyWlqbdb0+qCd7sRGHMXpYwzik3R8re380fG3wGslk
         Tob5gprhhVeaKXVcB1N6SxZ5fQnwY2g7qfkN06ZwrUS0vK2XsUe7R7Bh8NGBvdsh2EV3
         LRbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fBwHd7wD;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com. [2607:f8b0:4864:20::232])
        by gmr-mx.google.com with ESMTPS id t35si714640jal.4.2022.02.15.08.25.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 08:25:57 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) client-ip=2607:f8b0:4864:20::232;
Received: by mail-oi1-x232.google.com with SMTP id l5so1205145oii.13
        for <open-iscsi@googlegroups.com>; Tue, 15 Feb 2022 08:25:57 -0800 (PST)
X-Received: by 2002:a05:6808:1705:b0:2d4:d7a:9c25 with SMTP id
 bc5-20020a056808170500b002d40d7a9c25mr1533695oib.51.1644942356957; Tue, 15
 Feb 2022 08:25:56 -0800 (PST)
MIME-Version: 1.0
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
In-Reply-To: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Tue, 15 Feb 2022 11:25:44 -0500
Message-ID: <CAK3e-EZbJMDHkozGiz8LnMNAZ+SoCA+QeK0kpkqM4vQ4pz86SQ@mail.gmail.com>
Subject: Re: Question about iscsi session block
To: open-iscsi@googlegroups.com
Cc: linux-scsi@vger.kernel.org, dm-devel@redhat.com, lduncan@suse.com, 
	leech@redhat.com, bob.liu@oracle.com
Content-Type: multipart/alternative; boundary="000000000000dccc3c05d810fc3c"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=fBwHd7wD;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--000000000000dccc3c05d810fc3c
Content-Type: text/plain; charset="UTF-8"

Hello,
   Something else to check is your MPIO configuration.  I have seen this
same symptom when the linux MPIO feature "queue_if_no_path" was enabled

 From the /etc/multipath.conf file showing it enabled.

    failback                immediate
    features                "1 queue_if_no_path"

 Also, in the past some versions of linux multipathd would wait for a
very long time before moving all I/O to the remaining path.

 Regards,
Don


On Tue, Feb 15, 2022 at 10:49 AM Zhengyuan Liu <liuzhengyuang521@gmail.com>
wrote:

> Hi, all
>
> We have an online server which uses multipath + iscsi to attach storage
> from Storage Server. There are two NICs on the server and for each it
> carries about 20 iscsi sessions and for each session it includes about 50
>  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block
> devices
>  on the server). The problem is: once a NIC gets faulted, it will take too
> long
> (nearly 80s) for multipath to switch to another good NIC link, because it
> needs to block all iscsi devices over that faulted NIC firstly. The
> callstack is
>  shown below:
>
>     void iscsi_block_session(struct iscsi_cls_session *session)
>     {
>         queue_work(iscsi_eh_timer_workq, &session->block_work);
>     }
>
>  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
>   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
>  blk_mq_quiesce_queue()>synchronize_rcu()
>
> For all sessions and all devices, it was processed sequentially, and we
> have
> traced that for each synchronize_rcu() call it takes about 80ms, so
> the total cost
> is about 80s (80ms * 20 * 50). It's so long that the application can't
> tolerate and
> may interrupt service.
>
> So my question is that can we optimize the procedure to reduce the time
> cost on
> blocking all iscsi devices?  I'm not sure if it is a good idea to increase
> the
> workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.
>
> Thanks in advance.
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/CAOOPZo4uNCicVmoHa2za0%3DO1_XiBdtBvTuUzqBTeBc3FmDqEJw%40mail.gmail.com
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EZbJMDHkozGiz8LnMNAZ%2BSoCA%2BQeK0kpkqM4vQ4pz86SQ%40mail.gmail.com.

--000000000000dccc3c05d810fc3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0 =C2=A0Something else to check is y=
our MPIO configuration.=C2=A0 I have seen this same symptom when the linux =
MPIO feature &quot;queue_if_no_path&quot; was enabled=C2=A0</div><div><br><=
/div><div>=C2=A0From the /etc/multipath.conf file showing it enabled.=C2=A0=
</div><div><br></div><div><span style=3D"color:rgb(17,17,17);font-family:Ro=
boto,sans-serif;font-size:16px">=C2=A0 =C2=A0 failback=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 immed=
iate</span><br style=3D"box-sizing:border-box;color:rgb(17,17,17);font-fami=
ly:Roboto,sans-serif;font-size:16px"><span style=3D"color:rgb(17,17,17);fon=
t-family:Roboto,sans-serif;font-size:16px">=C2=A0=C2=A0=C2=A0 features=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 &quot;1 queue_if_no_path&quot;</span><br></div><div><span styl=
e=3D"color:rgb(17,17,17);font-family:Roboto,sans-serif;font-size:16px"><br>=
</span></div><div><span style=3D"color:rgb(17,17,17);font-family:Roboto,san=
s-serif;font-size:16px">=C2=A0Also, in the past some versions of linux mult=
ipathd would wait for a very=C2=A0long time before moving=C2=A0all I/O to t=
he remaining path.=C2=A0</span></div><div><span style=3D"color:rgb(17,17,17=
);font-family:Roboto,sans-serif;font-size:16px"><br></span></div><div><span=
 style=3D"color:rgb(17,17,17);font-family:Roboto,sans-serif;font-size:16px"=
>=C2=A0Regards,</span></div><div><span style=3D"color:rgb(17,17,17);font-fa=
mily:Roboto,sans-serif;font-size:16px">Don</span></div><div><span style=3D"=
color:rgb(17,17,17);font-family:Roboto,sans-serif;font-size:16px">=C2=A0</s=
pan></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Feb 15, 2022 at 10:49 AM Zhengyuan Liu &lt;<a href=3D"mai=
lto:liuzhengyuang521@gmail.com">liuzhengyuang521@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi, all<br>
<br>
We have an online server which uses multipath + iscsi to attach storage<br>
from Storage Server. There are two NICs on the server and for each it<br>
carries about 20 iscsi sessions and for each session it includes about 50<b=
r>
=C2=A0iscsi devices (yes, there are totally about 2*20*50=3D2000 iscsi bloc=
k devices<br>
=C2=A0on the server). The problem is: once a NIC gets faulted, it will take=
 too long<br>
(nearly 80s) for multipath to switch to another good NIC link, because it<b=
r>
needs to block all iscsi devices over that faulted NIC firstly. The callsta=
ck is<br>
=C2=A0shown below:<br>
<br>
=C2=A0 =C2=A0 void iscsi_block_session(struct iscsi_cls_session *session)<b=
r>
=C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 queue_work(iscsi_eh_timer_workq, &amp;session-&=
gt;block_work);<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0__iscsi_block_session() -&gt; scsi_target_block() -&gt; target_block(=
) -&gt;<br>
=C2=A0 device_block() -&gt;=C2=A0 scsi_internal_device_block() -&gt; scsi_s=
top_queue() -&gt;<br>
=C2=A0blk_mq_quiesce_queue()&gt;synchronize_rcu()<br>
<br>
For all sessions and all devices, it was processed sequentially, and we hav=
e<br>
traced that for each synchronize_rcu() call it takes about 80ms, so<br>
the total cost<br>
is about 80s (80ms * 20 * 50). It&#39;s so long that the application can&#3=
9;t<br>
tolerate and<br>
may interrupt service.<br>
<br>
So my question is that can we optimize the procedure to reduce the time cos=
t on<br>
blocking all iscsi devices?=C2=A0 I&#39;m not sure if it is a good idea to =
increase the<br>
workqueue&#39;s max_active of iscsi_eh_timer_workq to improve concurrency.<=
br>
<br>
Thanks in advance.<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi%2Bunsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAOOPZo4uNCicVmoHa2za0%3DO1_XiBdtBvTuUzqBTeBc3FmDqEJw=
%40mail.gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.goog=
le.com/d/msgid/open-iscsi/CAOOPZo4uNCicVmoHa2za0%3DO1_XiBdtBvTuUzqBTeBc3FmD=
qEJw%40mail.gmail.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EZbJMDHkozGiz8LnMNAZ%2BSoCA%2BQeK0kpkqM4vQ4pz86=
SQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/open-iscsi/CAK3e-EZbJMDHkozGiz8LnMNAZ%2BSoCA%2BQeK0kpkqM=
4vQ4pz86SQ%40mail.gmail.com</a>.<br />

--000000000000dccc3c05d810fc3c--
