Return-Path: <open-iscsi+bncBDO7B5X3UIBBBYHY43ZQKGQEDEOZGVI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B56DF1906D6
	for <lists+open-iscsi@lfdr.de>; Tue, 24 Mar 2020 08:53:05 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id 11sf4303079oii.8
        for <lists+open-iscsi@lfdr.de>; Tue, 24 Mar 2020 00:53:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585036384; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPVS+5bcRd1n1Snl9lrw/86qzVJ0tqSkSgbqjHvbYk8qY4El5gaKH4wW1i/l6+/Wuw
         YLjE4BgPlmp0weWSfR6G82BMf+uAV0eoUTBAJ8Rj0xMvfIxvHw06HCs4vU+v06V7nMkU
         wj0i2l/jofF4qHTwgdtseS4iIcgOgR4cZe6ZLG0Vex7CSSqFvSvZnAJspXaLevK8IvT/
         CSAzdrhJcunfL1zK7gKm1QnymJ//FQ4GGMu3TOK/e3C/MMdXQfDG15wo8A/6/pcCgHvc
         UNNPalPgh+beL30wPkqUUOqlPmgzj9l9c8iea10c682ueQlZPG2vUSqnRqDWva84wzaP
         AOjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :content-transfer-encoding:mime-version:user-agent:date:message-id
         :subject:from:cc:to:sender:dkim-signature;
        bh=k7K7j0YQ16itD+yvkQZHfsCBnzr/TtBEXD4SIAOzveI=;
        b=XgRecwEwdoP7D7KJfJ3lISO5VMKglmKa8jnG24NhRRLawZFEI3i4rnCu8IoFJtCTd9
         pR6exrQ0If4mdbERy06ieGd7L7CmIHd59VprG0ToQqPXdAEtMd2WYZ4mr53De+p0z3g0
         AMCZ9xcnLN1kUyQ8I5lElPXH02OEMCCOYuwU7BjxYKtF3cmEbXQANWwex12g2W7+g7cN
         QcRb15YHvqaxki+rg+Sh6hryxaI1n7mF0bKe1qntheQKMazlKDGm8NKewH1GuFNzryVb
         emeZ03FmB3E+uSf3p+91CzYJ03t1obEVs3/wJeXBHjNy4u/KiPSRkBHW+eh7r1mOmqI9
         vlvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=k7K7j0YQ16itD+yvkQZHfsCBnzr/TtBEXD4SIAOzveI=;
        b=L+SDiS6gTIQMGtLjGtr+NXlnwjfHU8yoxE4f1TtcU5CxQPG8rzZfHX++bKSh2on3RD
         YVBx8AnzUo6EKW06lfdy0YdwuYQTfxLjv8E77vxwkcj2Ov6go4Ak3ALVAxbLmUCPhRrC
         MBRxGWJeyfu89PG5jWeqk5EKsOfEMUAaKHY7fjyXKqs+0LtyOfAYOLSJ9i+T1dnUlG01
         MNpS7vgpr8t0I8zoa8JpAbX/8dI1MdEFVpxU8LJdqvdVxPGQnNn2qnVDX/SeDcYxdHWE
         FEiWRldIRrAO65QjBteM4w3EqHhu+UxC+q0/jVr2BgFrreC3IT23hIgrIqT/d7kE8eFx
         e+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k7K7j0YQ16itD+yvkQZHfsCBnzr/TtBEXD4SIAOzveI=;
        b=bTB0iMtdi821wpYBhG+opWmvuIlO0eBvk3hPvmfCXzosWNi6dwCUUAuq1iEjI5evHj
         Dodv1mM0k7WygDrban6fzAcRbkMaxiBVikibK3ygTiC95rqiK94C5tbL8VwKA8KCZFsN
         FxmjnI/whf7jJ5hU+GVqvqn6VvNdF/+zhrivVs9hVI06M+966W3MsVd1Tbnpo9EE59wj
         guj0zvYm0jA9tQAlALTtEcv4LIl6DGLKqQ5QkuQ+V1/LGqob6OXDwGBdYxWNJ4DWm5Q7
         2qWl7ngDyoagX54Fm1rWsIcsJE7lAJGwQMGaylaXOFsP79PzpEyzIvG9zYCOSL2bwnjM
         qdhg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ3DcGOgziOQMgE7jTVtBCicKQ+mTLGihKQTCA+5LeCys3Yt73Dy
	NRaEvcp0XfhubUvzlaApwSQ=
X-Google-Smtp-Source: ADFU+vu6BeYK/cQvusg7TfFyMWMxY74f7zjuBfkF32gAmXRHz7Fbp2aOWCYeTZFVbDBy1QdiW73caw==
X-Received: by 2002:a05:6808:abc:: with SMTP id r28mr2478272oij.161.1585036384357;
        Tue, 24 Mar 2020 00:53:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:c38f:: with SMTP id t137ls1434949oif.6.gmail; Tue, 24
 Mar 2020 00:53:04 -0700 (PDT)
X-Received: by 2002:aca:abcd:: with SMTP id u196mr2553463oie.86.1585036384012;
        Tue, 24 Mar 2020 00:53:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585036384; cv=none;
        d=google.com; s=arc-20160816;
        b=CyT64Fi0YQEjdzUDlPUVYX7coo3PKhCFR1mgNP1yYjSomL5AYa2lyapwtkG+VKduI4
         2s3UxJuN6koklYZ63hB4+OfaA6Jd1yTEvJsor8iFl2OUbkMOgw45twiSsmo/h1M189E1
         WllojcVNPDkhKafSVtai5wJIguo/C5IQLVEWrg74lErGFcpSIGOVhSFgkvO01RCm+yRR
         /qI6/paKDhafWWoZ56QYnYTV+fhgksOZFnzI/ye3r78J9nf1F/t/JEq4dgisRcvC4SEu
         PEDDAf6qrUnemV70qKXz2UwaUVUj2W+U+i5m47d+T8QvvZeBoSqW+ruxKXtuMD7lB8oG
         dNNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version:user-agent
         :date:message-id:subject:from:cc:to;
        bh=rXqs/GTFYw3oIGPwkvW/zTl85J/pElU1YOjD0CizHtA=;
        b=nlPBQhXIFqPVF0OFrzSeP5+lK0uYc8juAxz8XVbvt0v4zUsc11FN6QjAz2UI2GsA21
         vIiIBk1JMdSylVVwJ5lzcUfTWzZV4dMKPJLOTg/FVnLNaS7N4+9YcUJpqBOQY4PkqvFW
         b+cYZ6RMFZXuWoSNcYq8zy2J6+Ae58LgguUvB6kF3LHnx9AH3JRFA6hz/5wpVF5rp0V1
         UTgmN05kiN9bkIPqoxqz1oIfjoxWJ/LjihRZlB69tlZUh+rmUIzKBYPZHQ7ACbOZIHu/
         5tGY9+5Xd/IF1uvAjBEUWJ6FK5I6MqRWFQ3BOsMl6z3ah2rtKPdHJWV7zIt5H0cHac1S
         dYjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id d16si290139otp.0.2020.03.24.00.53.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 00:53:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id AA77646081E544C8350C;
	Tue, 24 Mar 2020 15:53:00 +0800 (CST)
Received: from [10.173.221.252] (10.173.221.252) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 24 Mar
 2020 15:52:50 +0800
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linfeilong@huawei.com>, <liuzhiqiang26@huawei.com>
From: Wu Bo <wubo40@huawei.com>
Subject: PATCH] iscsi:report unbind session event when the target has been
 removed
Message-ID: <4eab1771-2cb3-8e79-b31c-923652340e99@huawei.com>
Date: Tue, 24 Mar 2020 15:52:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Originating-IP: [10.173.221.252]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

The daemon is restarted or crashed while logging out of a session.
The unbind session event sent by the kernel is not be processed or be lost.
When the daemon runs again, the session will never be able to logout.

After executing the logout again, the daemon is waiting for the unbind=20
event message.
The kernel status has been logged out and the event will not be sent again.

#iscsiadm -m node iqn.xxx -p xx.xx.xx.xx -u &
#service iscsid restart

when iscsid restart done. logout session again report error:
#iscsiadm -m node iqn.xxxxx -p xx.xx.xx.xx -u
Logging out of session [sid: 6, target: iqn.xxxxx, portal: xx.xx.xx.xx,3260=
]
iscsiadm: Could not logout of [sid: 6, target: iscsiadm -m node=20
iqn.xxxxx, portal: xx.xx.xx.xx,3260].
iscsiadm: initiator reported error (9 - internal error)
iscsiadm: Could not logout of all requested sessions

Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 =C2=A0drivers/scsi/scsi_transport_iscsi.c | 4 +++-
 =C2=A01 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c=20
b/drivers/scsi/scsi_transport_iscsi.c
index dfc726f..443ace0 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2012,7 +2012,7 @@ static void __iscsi_unbind_session(struct=20
work_struct *work)
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (session->target_id =3D=3D I=
SCSI_MAX_TARGET) {
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 spin_unlock_irqrestore(&session->lock, flags);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 mutex_unlock(&ihost->mutex);
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return;
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 goto unbind_session_exit;
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 target_id =3D session->target_i=
d;
@@ -2024,6 +2024,8 @@ static void __iscsi_unbind_session(struct=20
work_struct *work)
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 ida_simple_remove(&iscsi_sess_ida, target_id);

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scsi_remove_target(&session->de=
v);
+
+unbind_session_exit:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 iscsi_session_event(session, IS=
CSI_KEVENT_UNBIND_SESSION);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_DBG_TRANS_SESSION(session=
, "Completed target removal\n");
 =C2=A0}
--
1.8.3.1

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/4eab1771-2cb3-8e79-b31c-923652340e99%40huawei.com.
