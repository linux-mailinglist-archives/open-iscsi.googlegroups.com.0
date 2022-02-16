Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBIXZWOIAMGQENPNYLHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id C46BF4B8A17
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Feb 2022 14:31:16 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id q8-20020a056830232800b005ab75f5e906sf1363459otg.18
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Feb 2022 05:31:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645018275; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ja9eo1iIc6OZHVVIPcsQ28axfGSW5Y3M6XvU7u/4P0WqKYerUaJBSQQlCXRDhdbcnZ
         /MB5PjAqoPN11cyb3ilFIgB4C0SB0puEYpQDRzlSHUCNmcWwp6qOTW8OyVU0IDIUeB/m
         oxJ07md4YBO9nGY3d6tv5iA/e9TuGmeh1Zr1zkvf7d/6RqanBILbJESCqhEq/YAthnc2
         Xzb1VaCKWV1Ax7kCGzUL38iHjBlPNqgUhuVS4UpCtClg5mNNk4YFEaAA3CmuWMNmg6PP
         uB5QqYysa+I+ryHHyIE4ysoEqgRWx8d/1fMrZ2VCUmug91vA/iZprGnKoL9FYvi92/1p
         MLmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=k0aONONxNvujbu8O11u3n6AxqeoOlk3aD29ymG/AM+o=;
        b=AXQZXNX7zr1WAhnJjzk6bVcr2mtwAHPpI5JS+QYKDlF7mtbSSajsinZQtlRPihW31p
         IVz9ZnC5aj9WLChPoPQvcwFHQ9O7ZlJ+Hhj2wS/KXFmeq+j4Fc2u4nU+yQKyojrvtFST
         n4LxkaPGslYohyzAqhp7QemeOanoI44CiM0fYmit70Z3v1/xB8uVQCvh4WHTy1z8a/+u
         c4OEyXA4oVuquErre7rCOZ3Jtzagpkut/W/E69sCsfSdZAYlcf1TpUN0ZoF9pbOTfDyf
         4ybhl96mU+SaPq2yGtgJRVOvbJ56+6CVGYXHNlqeILT4yf9jeFu5jBD2P/F1oQ+mCCJb
         DrVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=d8BrxSXw;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k0aONONxNvujbu8O11u3n6AxqeoOlk3aD29ymG/AM+o=;
        b=AMZIDNq2IclnunrzBsjlQLMP6yoTOIO8Jp1Z+rLyqbmY/yVJ5T75e7MId6RexjtNOm
         kj/ieS78BNgX1pmSp+quTsfb8JuRnacsihj0ioz3u/G6B8Wug9Ta4GCHb+JhzQsSohlr
         GWwHTrNpgACGM2UmT3og/m5dPyhTBi5QKIbheJuAyOhKR5buDwLqaaO2pooaFGIKOI17
         wWRG6xTX7N47X2e+DFwiAQS/Xw++sGL93Kq+K+TL8KuXIGVVc4lOGiH38vR0m/GCsWCn
         Thbeze6A2dER5b6PMYnpvcjmAiQQYiu64fCmGbh7Wc21Euh/tkzIRpzqR+25PrQT8bWG
         DO8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0aONONxNvujbu8O11u3n6AxqeoOlk3aD29ymG/AM+o=;
        b=dicPB/tAoHT6J21HZMnt1F3F77S1byey/bdAIvFgkKLCldOV447m7hlUziLe+qALhC
         fMnD4cnRJ73RxGYv1z8DrWgV/jfLr/FTsJQs2M52dY0Y6t3nDsn4zX5d3bSRiUM063cD
         ArXUqqZ2iwvuN+HL/mOxU4Dk+gWb0i177/TKveICpesO/APlA/UjTO0yrvt4DQuyCJ0Z
         Sxo7ugXANdWiwvSQc+CDkK/OFT5I08qcwty8smiDKj/Uie3O/z3kl3TUjHDFkwSqcwZa
         dQzOrPqGe8qeaFewvjDDcVz94OIaKRo5NYCIu4+ZgOGYgIPK5s/yXGiv0g3k0GTRAU2/
         sXwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0aONONxNvujbu8O11u3n6AxqeoOlk3aD29ymG/AM+o=;
        b=U8XErY17S1bqjwH5WfptL8hnCy9w1v3Jbeomv7QjLQdmpSWdmSyxag0ysL4lIin43t
         9hd/QJph0Cia5sMvGDTqne498TG4Ccz1qideCHR6y58mEftzWVsLHQqj4W9Z0NhACYgP
         8ZJfVtcBmbYd1vgBHJuSjOqQXYySFKjrJHmOZGvgHVYtC/JT4cl+KfrxoF8BvENrn0Ns
         EVicSxF/28hUSFHWT1C50HlNwcSfDYhpqCEjMtG1b85sJEsLO/4fU/wGlyY2Zlc4dzKM
         v+Wnz8GHNvbVwA2UFde/f4SslBLszUwtU9w/i2RxDRY4WnqXxPk5rkPWUZKU3+aoOLAn
         COWw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530Q463Uin+KoFdX/OaSB4kj8s2KabXj2y8UQnjcJ86aehhpse28
	JL7UdUgR+i5LcXlsQz+l56E=
X-Google-Smtp-Source: ABdhPJyIW5qKAA1IB0NvaVlHcSguwzsYjJew3zrsUAGKB0wirFRrxPMIGZ9WmYgkzCFlUn5pOopaCg==
X-Received: by 2002:a05:6870:5385:b0:cb:d72e:9f79 with SMTP id h5-20020a056870538500b000cbd72e9f79mr452558oan.227.1645018275407;
        Wed, 16 Feb 2022 05:31:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:d68e:: with SMTP id z14ls1486897oap.2.gmail; Wed,
 16 Feb 2022 05:31:13 -0800 (PST)
X-Received: by 2002:a05:6871:4194:b0:d0:4b5e:db49 with SMTP id lc20-20020a056871419400b000d04b5edb49mr453539oab.342.1645018273885;
        Wed, 16 Feb 2022 05:31:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645018273; cv=none;
        d=google.com; s=arc-20160816;
        b=Ggr4kzxidX0pAafNAYrK2EKr/Auj/CXt3zM+SZKscjtj20XXVlvuVdPk8peAJshFhG
         fqSSuLB5+QAKlnD5LHr8L4O0qug2+khTA+8EcmMtht9svHHDwAbU8kKVzjG7LonnXj7k
         k57Zvuc1+XbpY79hsoyDKZ0A382da2imfq2DJ1oDIruZmDgwQIH2CQ5oyz7LixP0ms9n
         xXZbcx4C1BP43sR2F509yPFg5aBsXVYmbf+cFp4Y1PZcF9PL/dbSGL6iCFFYHpq8szLM
         UK92PSllwZCcIDUgmQv5Q1E61hkO0wUwpyi7iE782AMVhgaSFGvrh9QTX3UdkIaeN1l/
         1hhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=m61n5GuKTabKEsMYklGkqL8O+jG5r3G0LXVd6xCFo0U=;
        b=b45Saz1FEbNHavs862TrBqvLXEPakUL3Z4C/9fiegPCDTqlmAwnPKJneiENB1BSKpx
         ww0Sk+eLmQZuYQgutyKTNExvk+HoBbcaseZVnVs/V8cRG3EBd7u3BC0II6lyclJJJxy9
         QEIJR4ZocUVaHMG/KHpKYsJpRdV4PR093vaUAiKlqcwgqKRY/xFmrO6WsR8q5n41lMI/
         inPzNYGvPx6n7tKlPz7ZW0vWbPwtm2t6WhHDblyjBD9zyTuu6BLj6wiBGmSvlIYOKS22
         1XpqcsyiFM+IvHTFug+kVJHAuJk5GXdWIiCWiYj2vn5xJbcJ9ISNAiscORHdv5UGjJoO
         En6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=d8BrxSXw;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id w20si1769106ooc.2.2022.02.16.05.31.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 05:31:13 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Received: by mail-oi1-x22c.google.com with SMTP id s5so1007119oic.10
        for <open-iscsi@googlegroups.com>; Wed, 16 Feb 2022 05:31:13 -0800 (PST)
X-Received: by 2002:aca:5c46:0:b0:2d3:a858:c201 with SMTP id
 q67-20020aca5c46000000b002d3a858c201mr597291oib.278.1645018273364; Wed, 16
 Feb 2022 05:31:13 -0800 (PST)
MIME-Version: 1.0
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
 <CAK3e-EZbJMDHkozGiz8LnMNAZ+SoCA+QeK0kpkqM4vQ4pz86SQ@mail.gmail.com> <620CCE20020000A100047D30@gwsmtp.uni-regensburg.de>
In-Reply-To: <620CCE20020000A100047D30@gwsmtp.uni-regensburg.de>
From: Donald Williams <don.e.williams@gmail.com>
Date: Wed, 16 Feb 2022 08:31:02 -0500
Message-ID: <CAK3e-EbuwT=eMxTOGY_h9SO-RVrW2xA1sFfvQP_ijWJ1vYM3vg@mail.gmail.com>
Subject: Re: [EXT] Re: Question about iscsi session block
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000d5400105d822a942"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=d8BrxSXw;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--000000000000d5400105d822a942
Content-Type: text/plain; charset="UTF-8"

Hello,

 Thanks. On the app side, with iSCSI SANs  I extend the disk\ timeout value
in the OS.  To better handle any transitory network events, and controller
failovers.
In linux that's important to prevent filesystems like EXT4 from remounting
RO on an error.

  I would like to know which vendor they are using for iSCSI storage.

Regards,
Don


On Wed, Feb 16, 2022 at 5:12 AM Ulrich Windl <
Ulrich.Windl@rz.uni-regensburg.de> wrote:

> >>> Donald Williams <don.e.williams@gmail.com> schrieb am 15.02.2022 um
> 17:25 in
> Nachricht
> <CAK3e-EZbJMDHkozGiz8LnMNAZ+SoCA+QeK0kpkqM4vQ4pz86SQ@mail.gmail.com>:
> > Hello,
> >    Something else to check is your MPIO configuration.  I have seen this
> > same symptom when the linux MPIO feature "queue_if_no_path" was enabled
> >
> >  From the /etc/multipath.conf file showing it enabled.
> >
> >     failback                immediate
> >     features                "1 queue_if_no_path"
>
> Yes, the actual config is interesting. Especially when usind MD-RAID, you
> typically do not want "1 queue_if_no_path", but if the app can't handle I/O
> errors, one might want it.
> For a FC SAN featuring ALUA we use:
> ...
>         polling_interval 5
>         max_polling_interval 20
>         path_selector "service-time 0"
> ...
>         path_checker "tur"
> ...
>         fast_io_fail_tmo 5
>         dev_loss_tmo 600
>
> The logs are helpful, too. For example (there were some paths remaining
> all the time):
> Cable was unplugged:
> Feb 14 12:56:05 h16 kernel: qla2xxx [0000:41:00.0]-500b:3: LOOP DOWN
> detected (2 7 0 0).
> Feb 14 12:56:10 h16 multipathd[5225]: sdbi: mark as failed
> Feb 14 12:56:10 h16 multipathd[5225]: SAP_V11-PM: remaining active paths: 7
> Feb 14 12:56:10 h16 kernel: sd 3:0:6:3: rejecting I/O to offline device
> Feb 14 12:56:10 h16 kernel: sd 3:0:6:14: rejecting I/O to offline device
> Feb 14 12:56:10 h16 kernel: sd 3:0:6:15: rejecting I/O to offline device
>
> So 5 seconds later the paths are offlined.
>
> Cable was re-plugged:
> Feb 14 12:56:22 h16 kernel: qla2xxx [0000:41:00.0]-500a:3: LOOP UP
> detected (8 Gbps).
> Feb 14 12:56:22 h16 kernel: qla2xxx [0000:41:00.0]-11a2:3: FEC=enabled
> (data rate).
> Feb 14 12:56:26 h16 multipathd[5225]: SAP_CJ1-PM: sdbc - tur checker
> reports path is up
> Feb 14 12:56:26 h16 multipathd[5225]: 67:96: reinstated
> Feb 14 12:56:26 h16 multipathd[5225]: SAP_CJ1-PM: remaining active paths: 5
> Feb 14 12:56:26 h16 kernel: device-mapper: multipath: 254:4: Reinstating
> path 67:96.
> Feb 14 12:56:26 h16 kernel: device-mapper: multipath: 254:6: Reinstating
> path 67:112.
>
> So 4 seconds later new paths are discovered.
>
>
> Regards,
> Ulrich
>
>
>
> >
> >  Also, in the past some versions of linux multipathd would wait for a
> > very long time before moving all I/O to the remaining path.
> >
> >  Regards,
> > Don
> >
> >
> > On Tue, Feb 15, 2022 at 10:49 AM Zhengyuan Liu <
> liuzhengyuang521@gmail.com>
> > wrote:
> >
> >> Hi, all
> >>
> >> We have an online server which uses multipath + iscsi to attach storage
> >> from Storage Server. There are two NICs on the server and for each it
> >> carries about 20 iscsi sessions and for each session it includes about
> 50
> >>  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block
> >> devices
> >>  on the server). The problem is: once a NIC gets faulted, it will take
> too
> >> long
> >> (nearly 80s) for multipath to switch to another good NIC link, because
> it
> >> needs to block all iscsi devices over that faulted NIC firstly. The
> >> callstack is
> >>  shown below:
> >>
> >>     void iscsi_block_session(struct iscsi_cls_session *session)
> >>     {
> >>         queue_work(iscsi_eh_timer_workq, &session->block_work);
> >>     }
> >>
> >>  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
> >>   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue()
> ->
> >>  blk_mq_quiesce_queue()>synchronize_rcu()
> >>
> >> For all sessions and all devices, it was processed sequentially, and we
> >> have
> >> traced that for each synchronize_rcu() call it takes about 80ms, so
> >> the total cost
> >> is about 80s (80ms * 20 * 50). It's so long that the application can't
> >> tolerate and
> >> may interrupt service.
> >>
> >> So my question is that can we optimize the procedure to reduce the time
> >> cost on
> >> blocking all iscsi devices?  I'm not sure if it is a good idea to
> increase
> >> the
> >> workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.
> >>
> >> Thanks in advance.
> >>
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
> https://groups.google.com/d/msgid/open-iscsi/CAOOPZo4uNCicVmoHa2za0%3DO1_XiBd
> > tBvTuUzqBTeBc3FmDqEJw%40mail.gmail.com
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
> https://groups.google.com/d/msgid/open-iscsi/CAK3e-EZbJMDHkozGiz8LnMNAZ%2BSoC
> > A%2BQeK0kpkqM4vQ4pz86SQ%40mail.gmail.com.
>
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/620CCE20020000A100047D30%40gwsmtp.uni-regensburg.de
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EbuwT%3DeMxTOGY_h9SO-RVrW2xA1sFfvQP_ijWJ1vYM3vg%40mail.gmail.com.

--000000000000d5400105d822a942
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0</div><div>=C2=A0Thanks. On the app=
 side, with iSCSI SANs=C2=A0 I extend the disk\ timeout value in the OS.=C2=
=A0 To better handle any transitory network events, and controller failover=
s.=C2=A0</div><div>In linux that&#39;s important to prevent filesystems lik=
e EXT4 from remounting RO on an error.=C2=A0 =C2=A0</div><div><br></div><di=
v>=C2=A0 I would like to know which vendor they are using for iSCSI storage=
.=C2=A0=C2=A0</div><div><br></div><div>Regards,</div><div>Don</div><div>=C2=
=A0=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 16, 2022 at 5:12 AM Ulrich Windl &lt;<a href=3D=
"mailto:Ulrich.Windl@rz.uni-regensburg.de">Ulrich.Windl@rz.uni-regensburg.d=
e</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>&gt;&gt;&gt; Donald Williams &lt;<a href=3D"mailto:don.e.williams@gmail.co=
m" target=3D"_blank">don.e.williams@gmail.com</a>&gt; schrieb am 15.02.2022=
 um 17:25 in<br>
Nachricht<br>
&lt;<a href=3D"mailto:CAK3e-EZbJMDHkozGiz8LnMNAZ%2BSoCA%2BQeK0kpkqM4vQ4pz86=
SQ@mail.gmail.com" target=3D"_blank">CAK3e-EZbJMDHkozGiz8LnMNAZ+SoCA+QeK0kp=
kqM4vQ4pz86SQ@mail.gmail.com</a>&gt;:<br>
&gt; Hello,<br>
&gt;=C2=A0 =C2=A0 Something else to check is your MPIO configuration.=C2=A0=
 I have seen this<br>
&gt; same symptom when the linux MPIO feature &quot;queue_if_no_path&quot; =
was enabled<br>
&gt; <br>
&gt;=C2=A0 From the /etc/multipath.conf file showing it enabled.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0failback=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 immediate<br>
&gt;=C2=A0 =C2=A0 =C2=A0features=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;1 queue_if_no_path&quot;<br>
<br>
Yes, the actual config is interesting. Especially when usind MD-RAID, you t=
ypically do not want &quot;1 queue_if_no_path&quot;, but if the app can&#39=
;t handle I/O errors, one might want it.<br>
For a FC SAN featuring ALUA we use:<br>
...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 polling_interval 5<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 max_polling_interval 20<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 path_selector &quot;service-time 0&quot;<br>
...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 path_checker &quot;tur&quot;<br>
...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fast_io_fail_tmo 5<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_loss_tmo 600<br>
<br>
The logs are helpful, too. For example (there were some paths remaining all=
 the time):<br>
Cable was unplugged:<br>
Feb 14 12:56:05 h16 kernel: qla2xxx [0000:41:00.0]-500b:3: LOOP DOWN detect=
ed (2 7 0 0).<br>
Feb 14 12:56:10 h16 multipathd[5225]: sdbi: mark as failed<br>
Feb 14 12:56:10 h16 multipathd[5225]: SAP_V11-PM: remaining active paths: 7=
<br>
Feb 14 12:56:10 h16 kernel: sd 3:0:6:3: rejecting I/O to offline device<br>
Feb 14 12:56:10 h16 kernel: sd 3:0:6:14: rejecting I/O to offline device<br=
>
Feb 14 12:56:10 h16 kernel: sd 3:0:6:15: rejecting I/O to offline device<br=
>
<br>
So 5 seconds later the paths are offlined.<br>
<br>
Cable was re-plugged:<br>
Feb 14 12:56:22 h16 kernel: qla2xxx [0000:41:00.0]-500a:3: LOOP UP detected=
 (8 Gbps).<br>
Feb 14 12:56:22 h16 kernel: qla2xxx [0000:41:00.0]-11a2:3: FEC=3Denabled (d=
ata rate).<br>
Feb 14 12:56:26 h16 multipathd[5225]: SAP_CJ1-PM: sdbc - tur checker report=
s path is up<br>
Feb 14 12:56:26 h16 multipathd[5225]: 67:96: reinstated<br>
Feb 14 12:56:26 h16 multipathd[5225]: SAP_CJ1-PM: remaining active paths: 5=
<br>
Feb 14 12:56:26 h16 kernel: device-mapper: multipath: 254:4: Reinstating pa=
th 67:96.<br>
Feb 14 12:56:26 h16 kernel: device-mapper: multipath: 254:6: Reinstating pa=
th 67:112.<br>
<br>
So 4 seconds later new paths are discovered.<br>
<br>
<br>
Regards,<br>
Ulrich<br>
<br>
<br>
<br>
&gt; <br>
&gt;=C2=A0 Also, in the past some versions of linux multipathd would wait f=
or a<br>
&gt; very long time before moving all I/O to the remaining path.<br>
&gt; <br>
&gt;=C2=A0 Regards,<br>
&gt; Don<br>
&gt; <br>
&gt; <br>
&gt; On Tue, Feb 15, 2022 at 10:49 AM Zhengyuan Liu &lt;<a href=3D"mailto:l=
iuzhengyuang521@gmail.com" target=3D"_blank">liuzhengyuang521@gmail.com</a>=
&gt;<br>
&gt; wrote:<br>
&gt; <br>
&gt;&gt; Hi, all<br>
&gt;&gt;<br>
&gt;&gt; We have an online server which uses multipath + iscsi to attach st=
orage<br>
&gt;&gt; from Storage Server. There are two NICs on the server and for each=
 it<br>
&gt;&gt; carries about 20 iscsi sessions and for each session it includes a=
bout 50<br>
&gt;&gt;=C2=A0 iscsi devices (yes, there are totally about 2*20*50=3D2000 i=
scsi block<br>
&gt;&gt; devices<br>
&gt;&gt;=C2=A0 on the server). The problem is: once a NIC gets faulted, it =
will take too<br>
&gt;&gt; long<br>
&gt;&gt; (nearly 80s) for multipath to switch to another good NIC link, bec=
ause it<br>
&gt;&gt; needs to block all iscsi devices over that faulted NIC firstly. Th=
e<br>
&gt;&gt; callstack is<br>
&gt;&gt;=C2=A0 shown below:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0void iscsi_block_session(struct iscsi_cls_sessi=
on *session)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0{<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queue_work(iscsi_eh_timer_workq, =
&amp;session-&gt;block_work);<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 __iscsi_block_session() -&gt; scsi_target_block() -&gt; targ=
et_block() -&gt;<br>
&gt;&gt;=C2=A0 =C2=A0device_block() -&gt;=C2=A0 scsi_internal_device_block(=
) -&gt; scsi_stop_queue() -&gt;<br>
&gt;&gt;=C2=A0 blk_mq_quiesce_queue()&gt;synchronize_rcu()<br>
&gt;&gt;<br>
&gt;&gt; For all sessions and all devices, it was processed sequentially, a=
nd we<br>
&gt;&gt; have<br>
&gt;&gt; traced that for each synchronize_rcu() call it takes about 80ms, s=
o<br>
&gt;&gt; the total cost<br>
&gt;&gt; is about 80s (80ms * 20 * 50). It&#39;s so long that the applicati=
on can&#39;t<br>
&gt;&gt; tolerate and<br>
&gt;&gt; may interrupt service.<br>
&gt;&gt;<br>
&gt;&gt; So my question is that can we optimize the procedure to reduce the=
 time<br>
&gt;&gt; cost on<br>
&gt;&gt; blocking all iscsi devices?=C2=A0 I&#39;m not sure if it is a good=
 idea to increase<br>
&gt;&gt; the<br>
&gt;&gt; workqueue&#39;s max_active of iscsi_eh_timer_workq to improve conc=
urrency.<br>
&gt;&gt;<br>
&gt;&gt; Thanks in advance.<br>
&gt;&gt;<br>
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
&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/CAOOPZo4uNCicV=
moHa2za0%3DO1_XiBd" rel=3D"noreferrer" target=3D"_blank">https://groups.goo=
gle.com/d/msgid/open-iscsi/CAOOPZo4uNCicVmoHa2za0%3DO1_XiBd</a> <br>
&gt; tBvTuUzqBTeBc3FmDqEJw%<a href=3D"http://40mail.gmail.com" rel=3D"noref=
errer" target=3D"_blank">40mail.gmail.com</a><br>
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
&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/CAK3e-EZbJMDHk=
ozGiz8LnMNAZ%2BSoC" rel=3D"noreferrer" target=3D"_blank">https://groups.goo=
gle.com/d/msgid/open-iscsi/CAK3e-EZbJMDHkozGiz8LnMNAZ%2BSoC</a> <br>
&gt; A%2BQeK0kpkqM4vQ4pz86SQ%<a href=3D"http://40mail.gmail.com" rel=3D"nor=
eferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
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
om/d/msgid/open-iscsi/620CCE20020000A100047D30%40gwsmtp.uni-regensburg.de" =
rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/open=
-iscsi/620CCE20020000A100047D30%40gwsmtp.uni-regensburg.de</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EbuwT%3DeMxTOGY_h9SO-RVrW2xA1sFfvQP_ijWJ1vYM3vg=
%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.go=
ogle.com/d/msgid/open-iscsi/CAK3e-EbuwT%3DeMxTOGY_h9SO-RVrW2xA1sFfvQP_ijWJ1=
vYM3vg%40mail.gmail.com</a>.<br />

--000000000000d5400105d822a942--
