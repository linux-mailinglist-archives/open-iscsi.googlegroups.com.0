Return-Path: <open-iscsi+bncBD7Z7UVWSMJBB7FT7T2AKGQEFNJOGZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C26C31B2BE3
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 18:06:22 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 189sf13396854pgb.10
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 09:06:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587485181; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8RMnsMZH2f3A18bUIHZ3v2/nVBZNP/8q0L2MFhpsvdlAFwTw6xepkKSzmxgpnhWUS
         v/UciXYu6WOXNOoK12PI6mH2ORJzpgo8W7TwAXEyWJfEE0RiVjZrthaVi+D5vynMQvB3
         SCFhcZZr3GJZVB05wSIigDNSYy+UQ3DU3cjdAJ1DfcESUlrXVci3Afag5tiddRrMjs2o
         KCRG3lruO3231VTWD965cR/+99FOKXBgQjyn4AKa1fEA6W+hl+7N5rs4UCX6Jh82ZR5c
         8vvJMWapmy08mv2T19IezP8sEGvCKpbWpNZwv9jy0UT1s5t4zME+pAAN3Yj1DkgLVAQn
         E2Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=S5lRml7CZvnGM0/pc/697tLMg9q3a/ur85NwV301v3o=;
        b=gtMPan+7Q7dUUgUrlrqngvhkZVrl0HlxQ173po0yWmLOZEpMU+9u2V9Oic9Hy+Z21B
         2BxNh4/bQ9mK9AJcIubC94AH9z30fLNgaju6/H7hYcTs8ticEMwOmP9kCOz/MxzZne84
         hyulHrfaxtySDjLk5VC1ggrcj3N7nGIKW/1Xf2BNPMbapNF2W3mQgYvCzxawNTsWvgOC
         jmlU7suUotE6oBEgE0YRqeq1UzUgX8w0jTL5ubZjRxe34qC43Id5DDF7Thm0M3esLmQ2
         yR6kF9Gka5GtPixARMYCLHEJ2r9yU2VlNzDHAqMDn1wiiF+ELSS5DvXn7/8OwNq8+nPU
         ucew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UMcIC5mJ;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S5lRml7CZvnGM0/pc/697tLMg9q3a/ur85NwV301v3o=;
        b=fbOp9RZgrJnGUXbqrHt6hKz7N6qsPec0DxWKuO1kZxRpqRT2FOtb88x8kISscYpwsB
         g6ekqN+3Dqhlj3GwjE1htcr2laPsnbYD2N+0itKq3BhgnT7HUOQP/kBr+dR85abYSjRw
         LtpgseVF+hVORR3TVJuG49cwGyF+/hEGKNA4TnpOONrUCVqz1je1KItla15zbz+keb0z
         jP5Os7uvSQILKlYcF0g6FU8IKvs4rBQwtvI6yG0yBhbS32G2g7/V/+iEQZms0zAkDPgM
         /Ooy70Zo7Yj1bi1Iz1WL+HE52rDzKxxHPVhS6miLluWcPv+JsRndyvom0aHNLqliy0zJ
         Q/HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S5lRml7CZvnGM0/pc/697tLMg9q3a/ur85NwV301v3o=;
        b=JV2cQNLKWvLGPEc8XftNhYI1EDtcY1IDga5XbBz0iSMu2aLTYyCCbnftB3QP6i6P4g
         1kwQKx58y4n9RUe0FlQHcKg1uM8UxU03Mj3I/Ka0p4CJvX8+EM2SwQW46THsFpvrtc0l
         Sfy2nfCHdjvSvusCSpTlXyEFwFjgDChfdYuUOVULYCR+GlnNvSSkL8r22yrHlmrT/K59
         41HbMrzgQx+MDPmECv9JizYtjAJh498gTedPKIni0tZqvubgXCwL7CZENhOpOK/x/7xS
         6cc7ap65uq4gXapmXPiAFAJAVV+Pz/fCliD5epFkcPsnSJMute4Tqo1m9/eDc9qAUctI
         a1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S5lRml7CZvnGM0/pc/697tLMg9q3a/ur85NwV301v3o=;
        b=kr/Zfx5R8OWAe3eMQCrn3WBJHBSE4ghR4BRPI5/q0ni+ChFEBaBSrxHuejALb6WmkM
         YOfbQQL9M5Y37rlKvE6QAaqJrMGW8cctvK0y0lCroDRRyIr8x9WAoxg4nx+cXe4lVMFt
         VUJ94CqEY89uEMbZuh9sbRoZolSpmfmgxbLU3J1dSgv/MpnJouK7uedw6i3OsPa2df7K
         wppE+qx/S1UR0sbxjqyKGCKePa/jyDgc22uYaZSroFqX0EAR/pJqXKCc9AhjD84zGprT
         nxBnmS60W1zBih60vWWixHVVr0QSUIfF53Cz0lsGzFHxnyprh/KbWqHJlNlvQBfci6bs
         +BbA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZ8J/GsYnblBuB+u/2L4PDL2lsQoEQerEDb+6P3ET7XdQ/SLfvV
	w9ykfrHEP43Cd9joZplIt5o=
X-Google-Smtp-Source: APiQypLf51xlRxCYkN0qbCuFI8SxOrn6+/ZW1yNIHw6x4fYjyXKG8uNYrC6nXSh9pQYiKmmcH+jQRA==
X-Received: by 2002:a17:90a:25c3:: with SMTP id k61mr6588802pje.28.1587485181107;
        Tue, 21 Apr 2020 09:06:21 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:a50f:: with SMTP id n15ls12969621pgf.5.gmail; Tue, 21
 Apr 2020 09:06:20 -0700 (PDT)
X-Received: by 2002:a63:6602:: with SMTP id a2mr22601525pgc.281.1587485180505;
        Tue, 21 Apr 2020 09:06:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587485180; cv=none;
        d=google.com; s=arc-20160816;
        b=pdj1N73NVp+lsqHPxNFWzjA6iCYLyq6wre14+uA8edRe9rxQ6MfGv+1z9lIueitnJr
         +rMfSdw50r1s6OtOI6+A2B8HtCftdVihA1y5Ol8cT4TkU8eBjbUeq3VefLWY7qXqIiPc
         3Yo8d5vHwhSPBddTnGZnbqc36jzxldVMSb8cQEgMs5Z2bJS1AKdiUcHW7qV22sMkkADD
         ENTE4J207qwfxe8BKYF+3cufOAlCrBBhSFDhwqhO/ac6C/jE+rqlMfVH5pGYgncQb6oq
         CIMXZb/gBlvD2kkEx5hWf5+5tDrAJm2OguKik/1g+Xmc05ZcCoOwpAHr+asNnxnQMZXX
         654A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=DuV4Dk+2JATktruWsirGdgseEBIqmlzHFxH6AKJJopI=;
        b=S5eoa9ycMQ3WlOldWZdOiL2b5wmWfgt0pwKC9adegKvzF6/ZLGndYICwFtenM97mAt
         WxHO0d4ozzvkbX8kidIsubYNsHY8xFC0x0ZerRUE8n7GOlzLX8tbLv3sdAfL6xeoDNAb
         UTf8k47Pie9+DHETtRRfcjQ2fiM22N7FArM8Ayo90L/cPT/tDVyLQ8oSfwCCaD0D3ceC
         flnqFCp4DrrvA8hv0uvPrw/A77yCKyHkU/5K18wE+ur13vomYxSzA3H+5eZiaITqzkWR
         0arURFZJZpzyx6LsAjF07mY2SCd7VS6nWdeuFcaJFmvAeSILFeeOSw+npzNri5KflT/4
         5tXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UMcIC5mJ;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id q189si165243pfc.0.2020.04.21.09.06.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 09:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id c16so6994021ilr.3
        for <open-iscsi@googlegroups.com>; Tue, 21 Apr 2020 09:06:20 -0700 (PDT)
X-Received: by 2002:a92:c144:: with SMTP id b4mr10436605ilh.89.1587485179526;
 Tue, 21 Apr 2020 09:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com> <9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
In-Reply-To: <9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Tue, 21 Apr 2020 12:06:10 -0400
Message-ID: <CAK3e-EbA-d6NeDETJ0EMHeAw3HGko_uCB_f6gsiqdjmEeYz6fw@mail.gmail.com>
Subject: Re: udev events for iscsi
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000364b2505a3cf3212"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UMcIC5mJ;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--000000000000364b2505a3cf3212
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

 re:  XenServer.  The initiator is the same but I suspect your issue with
the disk timeout value on Linux.  When the connection drops Linux gets the
error and mount RO.   In VMware for example the VMware tools sets Windows
Disktimeout to 60 seconds to not give up so quickly.

 I suspect if you do the same in your Lilnux VM, increase the Disk Timeout
you will likely ride out  transitory network issues and SAN controller
failovers.  Which is where I see this occur all the time.

  This is from a Dell PS Series document. that shows one way to set the
value
http://downloads.dell.com/solutions/storage-solution-resources/(3199-CD-L)R=
HEL-PSseries-Configuration.pdf


Starting on Page 14.

  Disk timeout values The PS Series arrays can deliver more network I/O
than an initiator can handle, resulting in dropped packets and
retransmissions. Other momentary interruptions in network connectivity can
also cause problems, such as a mount point becoming read-only as a result
of interruptions. To mitigate against unnecessary iSCSI resets during very
brief network interruptions, change the value the kernel uses.

The default setting for Linux is 30 seconds. This can be verified using the
command:

 # for i in $(find /sys/devices/platform =E2=80=93name timeout ) ; do cat $=
i ; done
30 30

To increase the time it takes before an iSCSI connection is reset to 60
seconds, use the command:

 # for i in $(find /sys/devices/platform =E2=80=93name timeout ); do echo =
=E2=80=9C60=E2=80=9D >
$i; done

To verify the changes, re-run the first command.

# for i in $(find /sys/devices/platform =E2=80=93name timeout ); do cat $i;=
 done
60 60

When the system is rebooted, the timeout value will revert to 30 seconds,
unless the appropriate udev rules file is created.

Create a file named /lib/udev/rules.d/99-eqlsd.rules and add the following
content: ACTION!=3D=E2=80=9Dremove=E2=80=9D, SUBSYSTEM=3D=3D=E2=80=9Dblock=
=E2=80=9D, ENV{ID_VENDOR}=3D=3D=E2=80=9DEQLOGIC=E2=80=9D,
RUN+=3D=E2=80=9D/bin/sh =E2=80=93 c =E2=80=98echo 60 > /sys/%p/device/timeo=
ut=E2=80=99=E2=80=9D To test the efficacy
of the new udev rule, reboot the system.

Test that the reboot occurred, and then run the =E2=80=9Ccat $i=E2=80=9D co=
mmand above.

# uptime 12:31:22 up 1 min, 1 user, load average: 0.78, 0.29, 0.10

# for i in $(find /sys/devices/platform =E2=80=93name timeout ) ; do cat $i=
 ; done
60 60

 Regards,

Don



On Tue, Apr 21, 2020 at 11:20 AM <robert@eyeconsultantspc.com> wrote:

> Wondering myself.
>
> On Apr 21, 2020, at 2:31 AM, Gionatan Danti <gionatan.danti@gmail.com>
> wrote:
>
> =EF=BB=BF
> [reposting, as the previous one seems to be lost]
>
> Hi all,
> I have a question regarding udev events when using iscsi disks.
>
> By using "udevadm monitor" I can see that events are generated when I
> login and logout from an iscsi portal/resource, creating/destroying the
> relative links under /dev/
>
>
> So running =E2=80=9Cudevadm monitor=E2=80=9D on the initiator, you can se=
e when a block
> device becomes available locally.
>
>
>
> However, I can not see anything when the remote machine simple
> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout expiring,=
 I
> don't see anything about a removed disk (and the links under /dev/ remain=
s
> unaltered, indeed). At the same time, when the remote machine and disk
> become available again, no reconnection events happen.
>
>
> As someone who has had an inordinate amount of experience with the iSCSi
> connection breaking ( power outage, Network switch dies,  wrong ethernet
> cable pulled, the target server machine hardware crashes, ...) in the
> middle of production, the more info the better.   Udev event triggers wou=
ld
> help.   I wonder exactly how XenServer handles this as it itself seemed
> more resilient.
>
> XenServer host initiators  do something correct to recover and wonder how
> that compares to the normal iSCSi initiator.
>
> But unfortunately, XenServer LVM-over-iSCSi  does not pass the message
> along to its Linux virtual drives and VMs in the same way as Windows VMs.
>
>
> When the target drives became available again,   MS Windows virtual
> machines would gracefully recover on their own.    All Linux VM
>  filesystems went read only and those VM machines required forceful
>  rebooting.   mount remount would not work.
>
>
>
> I can read here that, years ago, a patch was in progress to give better
> integration with udev when a device disconnects/reconnects. Did the patch
> got merged? Or does the one I described above remain the expected behavio=
r?
> Can be changed?
>
> Thanks.
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41=
eec5fb5b%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd4=
1eec5fb5b%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-5665=
62C5DC91%40eyeconsultantspc.com
> <https://groups.google.com/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566=
562C5DC91%40eyeconsultantspc.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAK3e-EbA-d6NeDETJ0EMHeAw3HGko_uCB_f6gsiqdjmEeYz6fw%40mail.gmail=
.com.

--000000000000364b2505a3cf3212
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0</div><div>=C2=A0re:=C2=A0 XenServe=
r.=C2=A0 The initiator is the same but I suspect your issue with the disk t=
imeout value on Linux.=C2=A0 When the connection drops Linux gets the error=
 and mount RO.=C2=A0 =C2=A0In VMware for example the VMware tools sets Wind=
ows Disktimeout to 60 seconds to not give up so quickly.=C2=A0</div><div><b=
r></div><div>=C2=A0I suspect if you do the same in your Lilnux VM, increase=
 the Disk Timeout you will likely ride out=C2=A0 transitory network issues =
and SAN controller failovers.=C2=A0 Which is where I see this occur all the=
 time.=C2=A0=C2=A0</div><div><br></div><div>=C2=A0 This is from a Dell PS S=
eries document. that shows one way to set the value=C2=A0 =C2=A0=C2=A0<a hr=
ef=3D"http://downloads.dell.com/solutions/storage-solution-resources/(3199-=
CD-L)RHEL-PSseries-Configuration.pdf">http://downloads.dell.com/solutions/s=
torage-solution-resources/(3199-CD-L)RHEL-PSseries-Configuration.pdf</a>=C2=
=A0 =C2=A0</div><div><br></div><div>Starting on Page 14.=C2=A0</div><div><b=
r></div><div>=C2=A0 Disk timeout values
The PS Series arrays can deliver more network I/O than an initiator can han=
dle, resulting in dropped
packets and retransmissions. Other momentary interruptions in network conne=
ctivity can also cause
problems, such as a mount point becoming read-only as a result of interrupt=
ions. To mitigate against
unnecessary iSCSI resets during very brief network interruptions, change th=
e value the kernel uses.=C2=A0</div><div><br></div><div>The default setting=
 for Linux is 30 seconds. This can be verified using the command:</div><div=
><br></div><div>=C2=A0# for i in $(find /sys/devices/platform =E2=80=93name=
 timeout ) ; do cat $i ; done=C2=A0</div><div>30
30=C2=A0</div><div><br></div><div>To increase the time it takes before an i=
SCSI connection is reset to 60 seconds, use the command:</div><div><br></di=
v><div>=C2=A0# for i in $(find /sys/devices/platform =E2=80=93name timeout =
); do echo =E2=80=9C60=E2=80=9D &gt;
$i; done=C2=A0</div><div><br></div><div>To verify the changes, re-run the f=
irst command.=C2=A0</div><div><br></div><div># for i in $(find /sys/devices=
/platform =E2=80=93name timeout ); do cat $i; done=C2=A0</div><div>60
60=C2=A0</div><div><br></div><div>When the system is rebooted, the timeout =
value will revert to 30 seconds, unless the appropriate udev
rules file is created.=C2=A0</div><div><br></div><div>Create a file named /=
lib/udev/rules.d/99-eqlsd.rules and add the following
content:
ACTION!=3D=E2=80=9Dremove=E2=80=9D, SUBSYSTEM=3D=3D=E2=80=9Dblock=E2=80=9D,=
 ENV{ID_VENDOR}=3D=3D=E2=80=9DEQLOGIC=E2=80=9D, RUN+=3D=E2=80=9D/bin/sh =E2=
=80=93
c =E2=80=98echo 60 &gt; /sys/%p/device/timeout=E2=80=99=E2=80=9D
To test the efficacy of the new udev rule, reboot the system.=C2=A0</div><d=
iv><br></div><div>Test that the reboot occurred, and then run
the =E2=80=9Ccat $i=E2=80=9D command above.=C2=A0</div><div><br></div><div>=
# uptime
12:31:22 up 1 min, 1 user, load average: 0.78, 0.29, 0.10=C2=A0</div><div><=
br></div><div># for i in $(find /sys/devices/platform =E2=80=93name timeout=
 ) ; do cat $i ; done=C2=A0</div><div>60
60=C2=A0</div><div><br></div><div>=C2=A0Regards,=C2=A0<br></div><div><br></=
div><div>Don=C2=A0</div><div><br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 21, 2020=
 at 11:20 AM &lt;<a href=3D"mailto:robert@eyeconsultantspc.com">robert@eyec=
onsultantspc.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"auto"><div>Wondering myself.</div><br><div dir=
=3D"ltr"><blockquote type=3D"cite">On Apr 21, 2020, at 2:31 AM, Gionatan Da=
nti &lt;<a href=3D"mailto:gionatan.danti@gmail.com" target=3D"_blank">giona=
tan.danti@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">[reposting, as the p=
revious one seems to be lost]<br><br>Hi all,<br>I have a question regarding=
 udev events when using iscsi disks.<br><br>By using &quot;udevadm monitor&=
quot; I can see that events are generated when I login and logout from an i=
scsi portal/resource, creating/destroying the relative links under /dev/<br=
></div></div></blockquote><div><br></div><div>So running =E2=80=9Cudevadm m=
onitor=E2=80=9D on the initiator, you can see when a block device becomes a=
vailable locally. =C2=A0=C2=A0</div><div><br></div><br><blockquote type=3D"=
cite"><div dir=3D"ltr"><div dir=3D"ltr"><br></div></div></blockquote><block=
quote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">However, I can not se=
e anything when the remote machine simple dies/reboots/disconnects: while &=
quot;dmesg&quot; shows the iscsi timeout expiring, I don&#39;t see anything=
 about a removed disk (and the links under /dev/ remains unaltered, indeed)=
. At the same time, when the remote machine and disk become available again=
, no reconnection events happen.<br></div></div></blockquote><div><br></div=
><div>As someone who has had an inordinate amount of experience with the iS=
CSi connection breaking ( power outage, Network switch dies, =C2=A0wrong et=
hernet cable pulled, the target server machine hardware crashes, ...) in th=
e middle of production, the more info the better. =C2=A0 Udev event trigger=
s would help. =C2=A0 I wonder exactly how XenServer handles this as it itse=
lf seemed more resilient. =C2=A0</div><div><br></div><div>XenServer host in=
itiators =C2=A0do something correct to recover and wonder how that compares=
 to the normal iSCSi initiator. =C2=A0=C2=A0</div><div><br></div><div><div>=
But unfortunately, XenServer LVM-over-iSCSi =C2=A0does not pass the message=
 along to its Linux virtual drives and VMs in the same way as Windows VMs. =
=C2=A0 =C2=A0</div><div><br></div><div>When the target drives became availa=
ble again, =C2=A0 MS Windows virtual machines would gracefully recover on t=
heir own. =C2=A0 =C2=A0All Linux VM =C2=A0filesystems went read only and th=
ose VM machines required forceful =C2=A0rebooting. =C2=A0 mount remount wou=
ld not work.=C2=A0</div></div><div><br></div><div><br></div><blockquote typ=
e=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><br>I can read here that, year=
s ago, a patch was in progress to give better integration with udev when a =
device disconnects/reconnects. Did the patch got merged? Or does the one I =
described above remain the expected behavior? Can be changed?<br><br>Thanks=
.<br></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40g=
ooglegroups.com</a>.<br>
</div></blockquote></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566562C5DC91%40eyeconsultants=
pc.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https:=
//groups.google.com/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566562C5DC91=
%40eyeconsultantspc.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EbA-d6NeDETJ0EMHeAw3HGko_uCB_f6gsiqdjmEeYz6fw%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAK3e-EbA-d6NeDETJ0EMHeAw3HGko_uCB_f6gsiqdjmEeYz6=
fw%40mail.gmail.com</a>.<br />

--000000000000364b2505a3cf3212--
