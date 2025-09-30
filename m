Return-Path: <open-iscsi+bncBC7KRMXASEIRBF4G53DAMGQENFAVDGA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 02670BABC62
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 09:13:35 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 38308e7fff4ca-3649d917a39sf29463051fa.0
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 00:13:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1759216414; cv=pass;
        d=google.com; s=arc-20240605;
        b=UIdBet7PN6ddRWQu62v6uxEui7OXUDf+1anxq87G+oA8Vaiap1OsgVBUNHbMk/P0jb
         FgA55Z71lEFkEZME5SAny6b++ZKRNOLusXiTrBYScREOsbR8JNPIcSGjqcVaKsGKiC2x
         NGOS7u6eg6rOGpQQWZAZ7rUh1qCymk3QtJhGprFwzdK9BYESdMQqcZdIquPvddXIHmcl
         tB/rWtVCTXw9NrTl4eXwxG3b+fUVMvmFLgHhZGVLHQB1YG5PXpU7UDgescIRNTkvT90o
         dGY/VbRk9UyWpQ72OcWejwLADZIn1RD5LVXaD11jaHeBIuX2JjJBeZJpv0GKnU2vTS2Z
         BWSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=QmmDz/KvjwE/SF+G8d25Pupe+2ea6LE40t2KFtgeXK0=;
        fh=P8AFdve0AAjH+hNFSHZ6vyDpKrxUko+QL9m6NIRlGXs=;
        b=HVdNMp/OVkWJQnQEdN0iq/jlUv00dE977eA6+xw+nFB52xBXGThhr5aNN0uNfm0ITA
         9gZZPfzjLXh+C0HFa6Nm8jjrDU1ntasUSm0/Qd+srlybfsLa7MqBLyTHzM2Mh9NQrSWk
         XqeTiqE9/m8RXkootFfw8OA4mBRyUM8IwA25KSsCtITC3Ml1UUqOlOc925SWnto3EcVj
         L0XNrM6lvdIc7j6l828UFizCbHMkM7zVckmmeMUyN4Rx0TdzcMhpoQhPvLzZezRuOp9U
         wXhlSUc0Z8rMws0Gp4PjeMnEgbc6u1XwHJyws1QJb0cJMhgKyIPmkewUA2lomWxC5pXn
         o44w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=k1laapMn;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1759216414; x=1759821214; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=QmmDz/KvjwE/SF+G8d25Pupe+2ea6LE40t2KFtgeXK0=;
        b=ajqaWHEayvcCKiJUPlB/8C6EuLZ5mKLeOMTnwAGfqnYWHmoVvh/wmsjBHB3N8Xiw+Z
         8qDW53vCVFTV+h1nn0g29wUe2JzgAY+OprWsJ978jMiDkWEU0nU4n+X3K/FhBvETdaLm
         0Gk8pu8pZGJ0mP6D6z2ItYDQCuIkvXWswqibgCybwRD5ao+3loUB+T0TtkxMBMoW8LHr
         4YfAa8EhwB8CkJe2fvGfZReqJOxh8ZiZD1xCjrHyKiZRf1/JVJ/Ulet/Brwtu0TdE68L
         8bDE+wdN/wbp2XjswS41ENucHETahXAgbPd3h3ZV6BTEnZ+N2N0NHMnydrnHWMz5HWqt
         5LUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759216414; x=1759821214; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QmmDz/KvjwE/SF+G8d25Pupe+2ea6LE40t2KFtgeXK0=;
        b=ifsLvOrrhUqkuKr0wjtk2cQptS33DtrEnNe5K3F0tE+MIkjT/o7wCpE0pDdBLcsr1S
         yLbNvy57nYSjgFw3pRMoIt/s1xAvMX7I2/H+DRt33PN49vfePVuMGrto74FAZ2izirIR
         vQw1PivszkbxJWqYGWHZaZM3nJ71LVUSRAr5kmZrwFDdikP+T+huIji37H2JrmHmViEo
         7sx0Gz19L8pMPZRh8E2o7MD3fwwz7lIsUCZ7j9GYij9t3YWVL1940J/NZP/ECeNrIT4U
         Ya+P+Y1B3UwWjPhleoaC0tHFzWPNB5Coi3z/3sikXEzKKe3kIx12YCNgH2YhtC36bCWd
         J5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759216414; x=1759821214;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=QmmDz/KvjwE/SF+G8d25Pupe+2ea6LE40t2KFtgeXK0=;
        b=U5/qO/lEIGkG2/aYsE/V/CelkZZCarFcBEGdQ8fz4p/+KgI3+BuvJn6QSslQ/pjjWr
         pk2fMjqFCTbWdox95zXr9Le6xBVolJjyOi/O5OhgeMCqYDAIvStfEMtVnspe9uoIRCsw
         +/QQSnYJVKYObBTfd1GBIaIqD2/H+V/TSfzojhNCTAePkQUzqi7iuGVpBbLRwkS6goud
         GJ0slK5m9zkqvsn4MTS3eoSGDtnsFHyxo93wJLCy1jN+5K5KqxDyP5O4Yh/JJDEFFSXi
         2zRDU5m0msRCsnq65Jt6ltTsHE4oXs9S6501hUdjk/cKNlClnJE8KE2fdDKIXlOFVsVT
         BBsg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXDyaZnd9IKy0sDw/cQHBEHBE8mFUAmTYth/PmdG7AvdcLx57vSWz2MbPIcKhkZcGV2TXmDtQ==@lfdr.de
X-Gm-Message-State: AOJu0YwiOUU6J3J9D5tiwocU1ue8rKO7knPSwLMGt3LOFokafUOPodB7
	kC9J4qGAp0v6wQTWKlFP2s4AIDzsijLRp88jAM+fajX/mfvIAtk/LPZV
X-Google-Smtp-Source: AGHT+IEZAeI7MDzCIuKeKyaAaaLytFG/g8BTwQgha/rmAyW9Bw0YjNF7JLcrTuSKCpYRDLiP85dQBA==
X-Received: by 2002:a2e:b887:0:b0:35f:a210:2a35 with SMTP id 38308e7fff4ca-36f7e199307mr71322051fa.7.1759216413749;
        Tue, 30 Sep 2025 00:13:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h="ARHlJd5xkmEvaXEhhd3DIvSaQJ7OefnPKikpbUnDz4JjZyQdfA=="
Received: by 2002:a2e:bea7:0:b0:337:f40b:d07a with SMTP id 38308e7fff4ca-36f8589a6efls14345261fa.0.-pod-prod-03-eu;
 Tue, 30 Sep 2025 00:13:25 -0700 (PDT)
X-Received: by 2002:a05:651c:1b10:b0:336:9232:fb91 with SMTP id 38308e7fff4ca-36f7e29b739mr66754501fa.4.1759216404836;
        Tue, 30 Sep 2025 00:13:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1759216404; cv=none;
        d=google.com; s=arc-20240605;
        b=ab8WGo1H8pcazkEbSYW5QIvdT7GAauc0ePdTPNCe6wfN7AFUTZ1xIJRMDsxRVrFUwS
         JlsmgLEb5ljNTk+NhvPmcIzDPhvTOzRWlCh+/Sj16d24cxSZl5BQhOO5LiKX90r/MzBm
         uztatS6w7kP2P+kJXsbBOCyYpYYIWVpE9ATn7SEMTJJa6aAZ3/7FdCBMkqZiwokF04cg
         T2OeXJ2TbtW8Kt3cbx6b6/EE4+eb6upY4EIycDbhOl/zwf5l8ZZo5NLDsbaUWrLor1yD
         TuBrcEhGw00q2k+lWh0CCtnw6FwKJgYPYAaecGoNeOaN6oURL+U4QIsKoZ9cGYtA6oVJ
         rTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=WsZocdB7nqTwq1A7TBLgD0Xu1QxMkPqSq4FuLZNn8Xg=;
        fh=brrs0Z/5hLqg+ffWd8QB4bJLZSHNZrCCuHP+x43PcwY=;
        b=W4OYKfF0iX3UTQBU6GItzTyMSW7qdnS4fpHsVElzMEjkwIm0lJrkfiLg0ZolBUYjfz
         /Em9nNrHWQWTJhGpA0OgLC9u3ndcDTtGV8QzV6wCRdHKLJfDX1n36eimf0x0sIBuoFl0
         nDdwsOAvw+zsZKgsNnjh979zuPLvyyV6vT1NiJiv4SW9QXWu6bzrDLXRthw3B+mPNI20
         mNcJWdX7Udl7AEKEq1uX2O15blFSEul60chq+D68Ay569L2Tk428Z7VorHFucGH61jjW
         81HEL6KVSnjg4bBFuLx8C3u0lrJSo1qChdZEjJ/Aweo5+cHvrSuXz6NcmWMYPLcEKf4T
         fd1Q==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=k1laapMn;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id 38308e7fff4ca-36fb3889b46si2882201fa.2.2025.09.30.00.13.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 00:13:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3ee13baf2e1so4324709f8f.3
        for <open-iscsi@googlegroups.com>; Tue, 30 Sep 2025 00:13:24 -0700 (PDT)
X-Gm-Gg: ASbGncvM2M0LctRYB1ytsAUljjbBIA0exAv2fE7Rp90V52PtjSmvU1qYh/9LBw62705
	ADsLmT4CJBX3vWAgLG2B5Nc2uyDfQqBPuhyfgYNbwKRTH0S/pxq1IQCJotZbgw7vhpDWOqLD5sP
	WV18YWJxNbL8qGufnnpmoJNrFeFP0xTjHd2mgNZy3/KuRfhaszYoVaQoWrEz95E2dNyFIi7nOgy
	wX9sQnZRb/6UtUcQO9KuIpIsBRpcTPfvH1V0FrB5ll05YcQp3Ef
X-Received: by 2002:a05:6000:1863:b0:3e8:68:3a91 with SMTP id
 ffacd0b85a97d-40e4cf41e80mr16645349f8f.60.1759216403838; Tue, 30 Sep 2025
 00:13:23 -0700 (PDT)
MIME-Version: 1.0
From: KUMAR NITISH <csnitish521@gmail.com>
Date: Tue, 30 Sep 2025 12:43:12 +0530
X-Gm-Features: AS18NWBeONSXydrrY2ZI1Xk8zbVZPEdqNVzOqc2GUOj4RP_YDFRaHyk2mvFLYHQ
Message-ID: <CAGEDioMYiPhTa6GYSgzzQwWvZAgASPmK-oHJYjt+HbfG4OpnkQ@mail.gmail.com>
Subject: open-iscsi version 2.0-865
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000d57c8e063fff7c7d"
X-Original-Sender: csnitish521@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=k1laapMn;       spf=pass
 (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::434
 as permitted sender) smtp.mailfrom=csnitish521@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@googlegroups.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--000000000000d57c8e063fff7c7d
Content-Type: text/plain; charset="UTF-8"

Hi,

If someone knows the public location/source of open-iscsi version 2.0-865,
can you please share the exact URL? Is it an end-of-life version? What are
the criteria to determine whether it is an EOL version? Please share if
there is a webpage for the clarifications related to it.


Thanks,
Nitish

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/CAGEDioMYiPhTa6GYSgzzQwWvZAgASPmK-oHJYjt%2BHbfG4OpnkQ%40mail.gmail.com.

--000000000000d57c8e063fff7c7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>If someone knows the public location/source of=
=C2=A0open-iscsi version 2.0-865, can you please share the exact URL? Is it=
 an end-of-life version? What are the criteria to determine whether it is a=
n EOL version? Please=C2=A0share if there is a webpage for the clarificatio=
ns related to it.<br><br><br>Thanks,<br>Nitish</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/d/msgid/=
open-iscsi/CAGEDioMYiPhTa6GYSgzzQwWvZAgASPmK-oHJYjt%2BHbfG4OpnkQ%40mail.gma=
il.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/=
msgid/open-iscsi/CAGEDioMYiPhTa6GYSgzzQwWvZAgASPmK-oHJYjt%2BHbfG4OpnkQ%40ma=
il.gmail.com</a>.<br />

--000000000000d57c8e063fff7c7d--
