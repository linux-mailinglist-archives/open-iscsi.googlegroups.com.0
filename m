Return-Path: <open-iscsi+bncBCWLNCPY4ECRBAPCS6FQMGQEY5IEVNQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE3842ADDD
	for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 22:33:06 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id w13-20020a05620a0e8d00b0045fad6245e8sf208773qkm.8
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 13:33:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634070785; cv=pass;
        d=google.com; s=arc-20160816;
        b=lKtDtvIQcw8rg510s6F2I4y1QnbO80cvdiHI6S9MIsiRiG0lYG6s7bv21e6z2l2lIj
         Ui6Z+HHcEK8ScapWTGRayONKyPj+oBazsrDnRl1gYOyAFTyoC7yBXBGs4YrFBKkT/Qul
         fCNQFLdXJUs5otmS9VIhJLHFz6D0H4jzPGmzz/CkWGWamoLPIMHjI0+AJLI15BInJlh1
         NBZDMLHAm5+Tjz1SkWL4cnlcw+mODEoMZsEKgAFa2rMRsXa6pctzPsSvoQ+sb1omAAI9
         jtCDQ61GhejXF9jn7+DH/vTcL/TxR+WuHUw6JJk2zXbaZMzHRdzSAH4qiew8aHenJ/Kt
         Yq9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/i/5I2S/SbiHS0j4j2JVg8s4oFMJxEqtD35gSiVILVE=;
        b=f0TJWeqQe5LiUCoMk/ZRygUeFmlvls/ztrRvrPeHdVvJ8/3TMMi5+/aKyX1LoHxp1u
         46ULR3dGEQXrah8pPD3TggM2rGNK28KVwIpI//XbBJIURd6K0L5u6464CBteNACtRaYw
         U1O9EOm5MGuNAd/cgDbMGA2LbnF8bz4PX2mjKqJLwwkkJWqHeLbHgQj1MLo+t390r7DR
         y/JynDU808//FdxFuD4k11rbZJP2TGecIeZTkSaN907YGrltnZH0I2r+GsPXSFkCvmvs
         7aemR4G5e5ohpf9G8JC3clVbbc5yGhxGpBy2B/qpYMGKobGt7Dc/Z2jV8F9KcpOsol2R
         Dw1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ScwiHN3o;
       spf=pass (google.com: domain of tdwilliamsiv@gmail.com designates 2607:f8b0:4864:20::a2a as permitted sender) smtp.mailfrom=tdwilliamsiv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/i/5I2S/SbiHS0j4j2JVg8s4oFMJxEqtD35gSiVILVE=;
        b=YbySChM+m0ZDCptZXp3AXeZpxPnXT6woalHdNMhzLyBBuDcWXR0CNDO1mFtLpjwh0y
         AK0oXmUEkEH+BHZWP3ld9J2yo+XfhdjZKv+xkD4an+bThy9c9jUHyP6pZXTHGpqnFPNE
         KHe686emqXHQYcfahT1tPDN19gnwA4bi8cUBl5qBs1QQYQpa1TkjDzdtGItCr/rmt3n7
         AQUrICWNL1gcARb3NYYZ3OMGvqWDZvAOHefMzO4/zd2ydXG+uxKQgr89puCvspMH/0V3
         qT7mJIIHx7NpMiSAYqnLBSBvRb9uBbLdA75WHXaJkKvXRqxRnFe0niReoFfIY4JHm8Fw
         RHvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/i/5I2S/SbiHS0j4j2JVg8s4oFMJxEqtD35gSiVILVE=;
        b=bnDXhk2qwSDAt6bB2TKJu6BuzInYQ8stj5OrRcm5NYQzDnrXIIProSF0+YGuwU8reB
         e1DSosNP+KoTT9lvVPMwuBzjn7yEyUIgaDJdvSMF5KtX0JeBjm+mC0JhriiLGfWRS6M9
         /ItxHoK5ZpAaeMdbkogbWNSkZKUarGVXIRIoTtpxiTab/s1iAEXSaSirqBUgKW3LjZzH
         +aizq0PJmplR2qJoYKzg6bP4Fb3X7LxmitKV0ZY00lBirXnplK2LGdYjFIQA+Y0fdkil
         fC5INMex07w9tQuKNtQynAoKh5v4A98HS1v+g4uAk7B2Fp6LGG8HQgWA56RapWkktao7
         ehuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/i/5I2S/SbiHS0j4j2JVg8s4oFMJxEqtD35gSiVILVE=;
        b=ucli48t2zak6v8I7Y6Nct1qyrxlL/TbajyesyxdUq80CeHeZRRFFzPZTxqO1m86HMO
         6Q5UOr9vzdRrxDja6xPNNSM642CNaip6x+VaGf2VL9eDilLZN++/Rh6QCsYodG0Qdhgp
         RBeouozauvNsHm/8kiTO786QcPnLI5qtEbcUpjRFE2NhTes572mmxEJ200bhh08fXrED
         1PUULsJHeDyBAVgw+k5DEZcXiEwMn+VukMzwHFwqt+NcwdJGe+2F38cffQxsHLBsUzwn
         DsV7NvsK11yiaVXR72rO9ueA4wHdJdeCGGz61YeJy4BQpB0THfqoEgdTePla3VITbPed
         wTHQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532o885/+abfEFh/pGjtHuu8TIcwi1AZdRy5w9vXyZAaaSk+EvCQ
	1zGhfqT5QpOWNVKZwm1ifm4=
X-Google-Smtp-Source: ABdhPJzamraZREv6Nk/vDHlg8ghh+BlJRs+wZ36HnBg/pFVR04b2EZPfun/qi8pTxWakYaMmricRwQ==
X-Received: by 2002:ac8:53da:: with SMTP id c26mr24315784qtq.402.1634070785428;
        Tue, 12 Oct 2021 13:33:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:2099:: with SMTP id 25ls83961qtd.1.gmail; Tue, 12 Oct
 2021 13:33:05 -0700 (PDT)
X-Received: by 2002:a05:622a:1492:: with SMTP id t18mr17455818qtx.229.1634070785089;
        Tue, 12 Oct 2021 13:33:05 -0700 (PDT)
Received: by 2002:a05:620a:998:b0:45e:895c:b2d3 with SMTP id af79cd13be357-45ef490e1abms85a;
        Mon, 11 Oct 2021 16:24:38 -0700 (PDT)
X-Received: by 2002:ab0:540e:: with SMTP id n14mr18311029uaa.73.1633994677908;
        Mon, 11 Oct 2021 16:24:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633994677; cv=none;
        d=google.com; s=arc-20160816;
        b=mwFpuSLljlFvyY1C4iwL24BvLQkzfUZzPyKmgB30liB50uQargcQUK01dpvxnrDAm2
         bI8mUDIR/xK6vONqqMpFpvkIsAelxJ96qa9RK4NKbctwpfFqQsBy+oQwqP96Hgh2UBRx
         dtANweelDohtMK4QpPj9mDDPwWjfea8zTirtfkgfPobGS5p+pp/B9IReLmDVsMzjo1cd
         OKYXGDgoC6LgimFKCRIF1kMF/vEaQK9+v3kM7450xg7YKi2nsrKmc6E6LF2hdP3cJqKd
         V26OsI+W69mNXlwecKhfUC8UjpFiIXOMPvbv/VtaPYfXLVAG4qZ3mgsUzQrB9qaY4kNS
         xK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=BreajEC/2F+TjnKbcCAsFZ/o3+iJVo2Pj/0FApIOXDY=;
        b=vtB7fkE+weeJnvKLcRStdAVSYOJuDqX5dPWxmcisLn0s8HrrPl/zPRY6OeXALztw/Y
         /LUcIQcL6KsTPSrJ4f5oWgzP1SIqN+au3fOIrOMGH+hUMV+u666MB/1oroPApumNZJ+e
         Egt/U0pXPd9vpD65/H6XrIi2sQfC1MOHU2vYnu0y7sGn8zb+RYPFgq0pvrixkt7aKLau
         VtnOSaDIvn1zq/9K4cHk8SS2LG8GOII1lxvEcrMRRm0w5kvS6kk9DJ2B8ghmoq/Ww4S1
         56G3MD5EALjhHigTpdLytXoKTVgIDfInzlaEirJEQB9kIZdfJde5UQWC5dnAcOEkDxhS
         tiHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ScwiHN3o;
       spf=pass (google.com: domain of tdwilliamsiv@gmail.com designates 2607:f8b0:4864:20::a2a as permitted sender) smtp.mailfrom=tdwilliamsiv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com. [2607:f8b0:4864:20::a2a])
        by gmr-mx.google.com with ESMTPS id c19si170215uad.1.2021.10.11.16.24.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Oct 2021 16:24:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of tdwilliamsiv@gmail.com designates 2607:f8b0:4864:20::a2a as permitted sender) client-ip=2607:f8b0:4864:20::a2a;
Received: by mail-vk1-xa2a.google.com with SMTP id j12so1106780vka.4
        for <open-iscsi@googlegroups.com>; Mon, 11 Oct 2021 16:24:37 -0700 (PDT)
X-Received: by 2002:ab0:550f:: with SMTP id t15mr17980613uaa.22.1633994677496;
 Mon, 11 Oct 2021 16:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20211006202225.GA10376@t>
In-Reply-To: <20211006202225.GA10376@t>
From: "T. Williams" <tdwilliamsiv@gmail.com>
Date: Mon, 11 Oct 2021 19:24:26 -0400
Message-ID: <CADN=F_mobip5EsmWFOfbKFK+E8C5ZCEK=fsf4-nEDgeHM3Lx7A@mail.gmail.com>
Subject: Fwd: [PATCH] fixing null dereference in scsi
To: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="000000000000512cce05ce1c08ab"
X-Original-Sender: tdwilliamsiv@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ScwiHN3o;       spf=pass
 (google.com: domain of tdwilliamsiv@gmail.com designates 2607:f8b0:4864:20::a2a
 as permitted sender) smtp.mailfrom=tdwilliamsiv@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--000000000000512cce05ce1c08ab
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: docfate111 <tdwilliamsiv@gmail.com>
Date: Wed, Oct 6, 2021 at 4:22 PM
Subject: [PATCH] fixing null dereference in scsi
To: <dan.robertson@starlab.io>


---
 drivers/scsi/scsi_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 572673873ddf..9abaacd6db67 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1174,7 +1174,7 @@ static blk_status_t scsi_setup_scsi_cmnd(struct
scsi_device *sdev,
        }

        cmd->cmd_len = scsi_req(req)->cmd_len;
-       if (cmd->cmd_len == 0)
+       if (cmd->cmd_len == 0 && cmd->cmnd)
                cmd->cmd_len = scsi_command_size(cmd->cmnd);
        cmd->cmnd = scsi_req(req)->cmd;
        cmd->transfersize = blk_rq_bytes(req);
-- 
2.25.1
A user could be able to set cmd->cmnd as NULL and then scsi_command_size
dereferences the null pointer.




-- 
Thank you for your time,
Thelford Williams

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CADN%3DF_mobip5EsmWFOfbKFK%2BE8C5ZCEK%3Dfsf4-nEDgeHM3Lx7A%40mail.gmail.com.

--000000000000512cce05ce1c08ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <b class=3D=
"gmail_sendername" dir=3D"auto">docfate111</b> <span dir=3D"auto">&lt;<a hr=
ef=3D"mailto:tdwilliamsiv@gmail.com">tdwilliamsiv@gmail.com</a>&gt;</span><=
br>Date: Wed, Oct 6, 2021 at 4:22 PM<br>Subject: [PATCH] fixing null derefe=
rence in scsi<br>To:  &lt;<a href=3D"mailto:dan.robertson@starlab.io">dan.r=
obertson@starlab.io</a>&gt;<br></div><br><br>---<br>
=C2=A0drivers/scsi/scsi_lib.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c<br>
index 572673873ddf..9abaacd6db67 100644<br>
--- a/drivers/scsi/scsi_lib.c<br>
+++ b/drivers/scsi/scsi_lib.c<br>
@@ -1174,7 +1174,7 @@ static blk_status_t scsi_setup_scsi_cmnd(struct scsi_=
device *sdev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd-&gt;cmd_len =3D scsi_req(req)-&gt;cmd_len;<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cmd-&gt;cmd_len =3D=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (cmd-&gt;cmd_len =3D=3D 0 &amp;&amp; cmd-&gt=
;cmnd)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd-&gt;cmd_len =3D=
 scsi_command_size(cmd-&gt;cmnd);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd-&gt;cmnd =3D scsi_req(req)-&gt;cmd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd-&gt;transfersize =3D blk_rq_bytes(req);<br>
-- <br>
2.25.1<br>
A user could be able to set cmd-&gt;cmnd as NULL and then scsi_command_size=
<br>
dereferences the null pointer.<br>
<br>
<br>
</div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Thank you for y=
our time,<br></div>Thelford Williams<br></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CADN%3DF_mobip5EsmWFOfbKFK%2BE8C5ZCEK%3Dfsf4-nEDgeHM3=
Lx7A%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://group=
s.google.com/d/msgid/open-iscsi/CADN%3DF_mobip5EsmWFOfbKFK%2BE8C5ZCEK%3Dfsf=
4-nEDgeHM3Lx7A%40mail.gmail.com</a>.<br />

--000000000000512cce05ce1c08ab--
